import os
from PIL import Image

def rgb_to_hex(rgb):
    return '#%02x%02x%02x' % rgb[:3]

def main():
    base_dir = os.path.dirname(__file__)
    logo_path = os.path.join(base_dir, 'logo.png')
    res_path = os.path.abspath(os.path.join(base_dir, '..', 'app', 'src', 'main', 'res'))

    if not os.path.exists(logo_path):
        print(f"Error: Could not find '{logo_path}'.")
        return

    img = Image.open(logo_path).convert("RGBA")
    
    # Get background color from top-left pixel to dynamically match the edge color
    bg_color = img.getpixel((0, 0))
    hex_color = rgb_to_hex(bg_color)
    
    # 1. Update colors.xml
    colors_xml_path = os.path.join(res_path, 'values', 'colors.xml')
    with open(colors_xml_path, 'r') as f:
        content = f.read()
    if 'name="ic_launcher_background"' not in content:
        content = content.replace('</resources>', f'    <color name="ic_launcher_background">{hex_color}</color>\n</resources>')
        with open(colors_xml_path, 'w') as f:
            f.write(content)

    # 2. Create mipmap-anydpi-v26 xmls
    anydpi_dir = os.path.join(res_path, 'mipmap-anydpi-v26')
    os.makedirs(anydpi_dir, exist_ok=True)
    xml_content = '''<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@color/ic_launcher_background" />
    <foreground android:drawable="@mipmap/ic_launcher_foreground" />
</adaptive-icon>
'''
    with open(os.path.join(anydpi_dir, 'ic_launcher.xml'), 'w') as f:
        f.write(xml_content)
    with open(os.path.join(anydpi_dir, 'ic_launcher_round.xml'), 'w') as f:
        f.write(xml_content)

    # 3. Generate ic_launcher_foreground.png
    sizes = {'mdpi': 48, 'hdpi': 72, 'xhdpi': 96, 'xxhdpi': 144, 'xxxhdpi': 192}
    for dpi, size in sizes.items():
        folder = os.path.join(res_path, f"mipmap-{dpi}")
        os.makedirs(folder, exist_ok=True)
        
        base = Image.new('RGBA', (size, size), (0, 0, 0, 0))
        # Android visual zone allows up to 72dp for a larger icon footprint, but we can push this even higher to 96/108.
        safe_dim = int(size * (96/108)) 
        
        img_copy = img.copy()
        img_copy.thumbnail((safe_dim, safe_dim), Image.Resampling.LANCZOS)
        
        x = (size - img_copy.width) // 2
        y = (size - img_copy.height) // 2
        base.paste(img_copy, (x, y))
        
        base.save(os.path.join(folder, "ic_launcher_foreground.png"))
        
    # Delete old static ic_launcher.png so Android correctly prioritizes the XML adaptive icon
    for dpi in sizes.keys():
        old_png1 = os.path.join(res_path, f"mipmap-{dpi}", "ic_launcher.png")
        old_png2 = os.path.join(res_path, f"mipmap-{dpi}", "ic_launcher_round.png")
        if os.path.exists(old_png1): os.remove(old_png1)
        if os.path.exists(old_png2): os.remove(old_png2)

    print(f"Adaptive icon generation complete using background color {hex_color}!")

if __name__ == '__main__':
    main()
