import React from 'react';
import { PageHeader } from '@/components/shared/PageHeader';
import { Card, CardContent } from '@/components/ui/card';
import { Switch } from '@/components/ui/switch';
import { Label } from '@/components/ui/label';
import { Separator } from '@/components/ui/separator';

const Preferences: React.FC = () => {
  const [darkMode, setDarkMode] = React.useState(true);
  const [soundFeedback, setSoundFeedback] = React.useState(false);

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
            <Switch checked={darkMode} onCheckedChange={setDarkMode} />
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
        </CardContent>
      </Card>
    </div>
  );
};

export default Preferences;
