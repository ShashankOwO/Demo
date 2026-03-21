import React from 'react';
import { PageHeader } from '@/components/shared/PageHeader';
import { Card, CardContent } from '@/components/ui/card';
import { Switch } from '@/components/ui/switch';
import { Label } from '@/components/ui/label';
import { Separator } from '@/components/ui/separator';
import { RadioGroup, RadioGroupItem } from '@/components/ui/radio-group';

const Preferences: React.FC = () => {
  const [darkMode, setDarkMode] = React.useState(true);
  const [soundFeedback, setSoundFeedback] = React.useState(false);
  const [difficulty, setDifficulty] = React.useState<string>('intermediate');

  const handleDarkModeSwitch = (isDark: boolean) => {
    setDarkMode(isDark);
    if (!isDark) {
      document.documentElement.classList.add('light');
      localStorage.setItem('theme_light', 'true');
    } else {
      document.documentElement.classList.remove('light');
      localStorage.setItem('theme_light', 'false');
    }
  };

  React.useEffect(() => {
    const saved = localStorage.getItem('interview_difficulty');
    if (saved) setDifficulty(saved);
    const isLight = localStorage.getItem('theme_light') === 'true';
    if (isLight) setDarkMode(false);
  }, []);

  const handleDifficultyChange = (val: string) => {
    setDifficulty(val);
    localStorage.setItem('interview_difficulty', val);
  };

  const difficultyOptions = [
    { value: 'beginner', label: 'Beginner', desc: 'Core concepts and fundamentals', icon: '🟢' },
    { value: 'intermediate', label: 'Intermediate', desc: 'Real-world problems and patterns', icon: '🟣' },
    { value: 'advanced', label: 'Advanced', desc: 'System design and edge cases', icon: '🔴' },
  ];

  return (
    <div className="max-w-2xl mx-auto py-8">
      <PageHeader title="Preferences" description="Customize your Resume2Interview experience." />

      <Card className="bg-surface border-border mt-8">
        <CardContent className="p-6 space-y-6">

          {/* ── Appearance ─────────────────────────────── */}
          <h3 className="font-syne font-semibold text-foreground">Appearance</h3>

          {/* Premium Theme Pill Toggle */}
          <div className="flex items-center justify-between gap-4">
            <div>
              <Label className="text-[15px] font-semibold">Theme</Label>
              <p className="text-xs text-muted-foreground mt-0.5">
                {darkMode ? '🌙 Deep navy — optimized for focus' : '☀️ Clean white — easy on the eyes'}
              </p>
            </div>

            <button
              onClick={() => handleDarkModeSwitch(!darkMode)}
              style={{
                position: 'relative',
                display: 'flex',
                alignItems: 'center',
                width: '88px',
                height: '40px',
                borderRadius: '999px',
                padding: '4px',
                border: darkMode ? '1.5px solid rgba(108,99,255,0.45)' : '1.5px solid rgba(245,158,11,0.5)',
                backgroundColor: darkMode ? '#12162b' : '#FFF8E8',
                boxShadow: darkMode
                  ? '0 0 16px rgba(108,99,255,0.3), inset 0 0 8px rgba(108,99,255,0.05)'
                  : '0 0 16px rgba(245,158,11,0.25), inset 0 0 8px rgba(245,158,11,0.05)',
                transition: 'all 0.3s ease',
                cursor: 'pointer',
              }}
              aria-label="Toggle theme"
            >
              {/* Moon emoji (left side) */}
              <span style={{
                position: 'absolute',
                left: '10px',
                fontSize: '14px',
                opacity: darkMode ? 0.3 : 1,
                transition: 'opacity 0.2s',
              }}>🌙</span>

              {/* Sun emoji (right side) */}
              <span style={{
                position: 'absolute',
                right: '10px',
                fontSize: '14px',
                opacity: darkMode ? 1 : 0.3,
                transition: 'opacity 0.2s',
              }}>☀️</span>

              {/* Sliding thumb */}
              <span style={{
                position: 'relative',
                zIndex: 10,
                width: '32px',
                height: '32px',
                borderRadius: '50%',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                fontSize: '16px',
                transform: darkMode ? 'translateX(0px)' : 'translateX(48px)',
                backgroundColor: darkMode ? '#6c63ff' : '#F59E0B',
                boxShadow: darkMode
                  ? '0 0 12px rgba(108,99,255,0.7)'
                  : '0 0 12px rgba(245,158,11,0.6)',
                transition: 'all 0.3s cubic-bezier(0.34,1.56,0.64,1)',
              }}>
                {darkMode ? '🌙' : '☀️'}
              </span>
            </button>
          </div>

          <Separator className="bg-border/50" />

          {/* ── Interview ───────────────────────────────── */}
          <h3 className="font-syne font-semibold text-foreground">Interview</h3>
          <div className="flex items-center justify-between">
            <div>
              <Label>Sound Feedback</Label>
              <p className="text-xs text-muted-foreground mt-0.5">Play a chime when a question is ready.</p>
            </div>
            <Switch checked={soundFeedback} onCheckedChange={setSoundFeedback} />
          </div>

          <Separator className="bg-border/50" />

          {/* ── Question Difficulty ─────────────────────── */}
          <h3 className="font-syne font-semibold text-foreground">Question Difficulty</h3>
          <div className="space-y-3">
            <p className="text-xs text-muted-foreground">Select the difficulty level for AI-generated questions.</p>
            <RadioGroup value={difficulty} onValueChange={handleDifficultyChange} className="space-y-2">
              {difficultyOptions.map(opt => (
                <div
                  key={opt.value}
                  onClick={() => handleDifficultyChange(opt.value)}
                  className={`flex items-center gap-4 cursor-pointer p-4 rounded-xl border-2 transition-all duration-200 ${
                    difficulty === opt.value
                      ? 'border-primary/60 bg-primary/5 shadow-[0_0_12px_rgba(108,99,255,0.08)]'
                      : 'border-border hover:border-border/70 hover:bg-white/[0.02]'
                  }`}
                >
                  <RadioGroupItem value={opt.value} id={opt.value} className="sr-only" />
                  <span className="text-xl select-none">{opt.icon}</span>
                  <div className="flex-1 min-w-0">
                    <p className="text-[14px] font-semibold text-foreground">{opt.label}</p>
                    <p className="text-[12px] text-muted-foreground">{opt.desc}</p>
                  </div>
                  {difficulty === opt.value && (
                    <span className="w-5 h-5 rounded-full bg-primary flex items-center justify-center text-white text-[11px] font-bold shrink-0">✓</span>
                  )}
                </div>
              ))}
            </RadioGroup>
          </div>
        </CardContent>
      </Card>
    </div>
  );
};

export default Preferences;
