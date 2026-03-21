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

  return (
    <div className="max-w-2xl mx-auto py-8">
      <PageHeader title="Preferences" description="Customize your Resume2Interview experience." />
      
      <Card className="bg-surface border-border mt-8">
        <CardContent className="p-6 space-y-6">
          <h3 className="font-syne font-semibold text-foreground">Appearance</h3>
          <div className="flex items-center justify-between">
            <div>
              <Label>Dark Mode</Label>
              <p className="text-xs text-muted-foreground mt-0.5">The application is optimized for dark mode.</p>
            </div>
            <Switch checked={darkMode} onCheckedChange={handleDarkModeSwitch} />
          </div>
          
          <Separator className="bg-border/50" />
          
          <h3 className="font-syne font-semibold text-foreground">Interview</h3>
          <div className="flex items-center justify-between">
            <div>
              <Label>Sound Feedback</Label>
              <p className="text-xs text-muted-foreground mt-0.5">Play a chime when a question is ready.</p>
            </div>
            <Switch checked={soundFeedback} onCheckedChange={setSoundFeedback} />
          </div>

          <Separator className="bg-border/50" />

          <h3 className="font-syne font-semibold text-foreground">Question Difficulty</h3>
          <div className="space-y-4">
            <p className="text-xs text-muted-foreground">Select the difficulty level for AI-generated technical questions.</p>
            <RadioGroup value={difficulty} onValueChange={handleDifficultyChange} className="space-y-3 cursor-pointer">
              <div className="flex items-center space-x-3 cursor-pointer p-4 rounded-lg border border-border hover:bg-white/[0.02] transition-colors">
                <RadioGroupItem value="beginner" id="beginner" />
                <Label htmlFor="beginner" className="cursor-pointer font-medium">Beginner</Label>
              </div>
              <div className="flex items-center space-x-3 cursor-pointer p-4 rounded-lg border border-border hover:bg-white/[0.02] transition-colors">
                <RadioGroupItem value="intermediate" id="intermediate" />
                <Label htmlFor="intermediate" className="cursor-pointer font-medium">Intermediate</Label>
              </div>
              <div className="flex items-center space-x-3 cursor-pointer p-4 rounded-lg border border-border hover:bg-white/[0.02] transition-colors">
                <RadioGroupItem value="advanced" id="advanced" />
                <Label htmlFor="advanced" className="cursor-pointer font-medium">Advanced</Label>
              </div>
            </RadioGroup>
          </div>
        </CardContent>
      </Card>
    </div>
  );
};

export default Preferences;
