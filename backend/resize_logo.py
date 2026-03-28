import os
import sys

try:
    from PIL import Image
except ImportError:
    print("Pillow library not found. Installing...")
    os.system("pip install Pillow")
    from PIL import Image

def resize_and_save(img, size, path):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    # create a transparent square image
    base = Image.new('RGBA', size, (0, 0, 0, 0))
    # Resize keeping aspect ratio
    img.thumbnail(size, Image.Resampling.LANCZOS)
    
    # Calculate pos to center
    x = (size[0] - img.width) // 2
    y = (size[1] - img.height) // 2
    base.paste(img, (x, y))
    
    base.save(path)
    print(f"Saved: {path}")

def generate_android(img, base_path):
    sizes = {
        'mdpi': 48,
        'hdpi': 72,
        'xhdpi': 96,
        'xxhdpi': 144,
        'xxxhdpi': 192
    }
    
    for dpi, size in sizes.items():
        folder = os.path.join(base_path, f"mipmap-{dpi}")
        resize_and_save(img, (size, size), os.path.join(folder, "ic_launcher.png"))
        resize_and_save(img, (size, size), os.path.join(folder, "ic_launcher_round.png"))
        
    # Play store 512
    # ensure xxxhdpi exists
    os.makedirs(os.path.join(base_path, "mipmap-xxxhdpi"), exist_ok=True)
    resize_and_save(img, (512, 512), os.path.join(base_path, "mipmap-xxxhdpi", "ic_launcher_512.png"))
    
    # Splash Screen Android 12 doesn't technically need a separate file if using adaptive icon
    # BUT for completeness we can output it
    os.makedirs(os.path.join(base_path, "drawable"), exist_ok=True)
    resize_and_save(img, (288, 288), os.path.join(base_path, "drawable", "ic_splash_logo.png"))

def generate_web(img, base_path):
    # ICO 16x16, 32x32
    img16 = img.copy()
    img16.thumbnail((16, 16), Image.Resampling.LANCZOS)
    img32 = img.copy()
    img32.thumbnail((32, 32), Image.Resampling.LANCZOS)
    # Save base as ICO
    img32.save(os.path.join(base_path, 'favicon.ico'), format='ICO', sizes=[(16, 16), (32, 32)])
    print(f"Saved: {os.path.join(base_path, 'favicon.ico')}")

    # Apple touch
    resize_and_save(img, (180, 180), os.path.join(base_path, "apple-touch-icon.png"))
    
    # PWA
    resize_and_save(img, (192, 192), os.path.join(base_path, "logo192.png"))
    resize_and_save(img, (512, 512), os.path.join(base_path, "logo512.png"))

def main():
    logo_path = os.path.join(os.path.dirname(__file__), 'logo.png')
    if not os.path.exists(logo_path):
        print(f"Error: Could not find '{logo_path}'.")
        print("Please save your original logo image exactly as 'logo.png' in the 'd:\\R2I\\backend' folder.")
        sys.exit(1)
        
    print(f"Processing '{logo_path}'...")
    img = Image.open(logo_path).convert("RGBA")
    
    android_res_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'app', 'src', 'main', 'res'))
    web_public_path = os.path.abspath(os.path.join(os.path.dirname(__file__), 'web', 'public'))
    
    print("\nGenerating Android resources...")
    generate_android(img, android_res_path)
    
    print("\nGenerating Web resources...")
    generate_web(img, web_public_path)
    
    print("\nSuccessfully generated all logo sizes for Web and Android!")

if __name__ == "__main__":
    main()
