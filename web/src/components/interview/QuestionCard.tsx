import React from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { CheckCircle2, GitBranch, Volume2 } from 'lucide-react';

interface QuestionCardProps {
  questionNumber: number;
  totalQuestions: number;
  category: string;
  question: string;
  isCompleted?: boolean;
  isFollowUp?: boolean;
}

export const QuestionCard: React.FC<QuestionCardProps> = ({ 
  questionNumber, 
  totalQuestions, 
  category, 
  question,
  isCompleted = false,
  isFollowUp = false,
}) => {
  const handleSpeak = () => {
    if ('speechSynthesis' in window) {
      window.speechSynthesis.cancel();
      const utterance = new SpeechSynthesisUtterance(question);
      window.speechSynthesis.speak(utterance);
    }
  };

  return (
    <Card className={`border-border transition-colors ${isCompleted ? 'bg-surface-2 border-primary/20' : 'bg-surface shadow-[var(--shadow)]'}`}>
      <CardContent className="p-6 sm:p-8">
        <div className="flex items-center justify-between mb-4">
          <div className="flex items-center gap-2 flex-wrap">
            <Badge variant={isCompleted ? "outline" : "default"} className={!isCompleted ? "bg-primary text-white hover:bg-primary-dim" : "text-muted-foreground border-border"}>
              {category}
            </Badge>
            {isFollowUp && (
              <Badge variant="outline" className="border-amber-400/60 text-amber-500 bg-amber-500/10 gap-1 text-[11px]">
                <GitBranch className="w-3 h-3" />
                Follow-up
              </Badge>
            )}
          </div>
          
          <div className="flex items-center gap-2 text-sm text-muted-foreground font-medium">
            <span>Question {questionNumber} of {totalQuestions}</span>
            {isCompleted && <CheckCircle2 className="w-5 h-5 text-success" />}
          </div>
        </div>
        
        <div className="flex items-start justify-between gap-4 mt-2">
          <h2 className={`text-xl sm:text-2xl font-syne font-medium leading-relaxed ${isCompleted ? 'text-muted-foreground' : 'text-foreground'}`}>
            {question}
          </h2>
          {!isCompleted && (
            <button 
              onClick={handleSpeak}
              className="p-2 -mr-2 rounded-full hover:bg-surface-2 text-muted-foreground hover:text-primary transition-colors flex-shrink-0"
              title="Read Question Aloud"
              aria-label="Read Question Aloud"
            >
              <Volume2 className="w-5 h-5" />
            </button>
          )}
        </div>
      </CardContent>
    </Card>
  );
};
