import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { PageHeader } from '@/components/shared/PageHeader';
import { FileDropzone } from '@/components/shared/FileDropzone';
import { resumeApi } from '@/api/resume.api';
import { useInterviewStore } from '@/store/interviewStore';
import toast from 'react-hot-toast';
import { motion } from 'framer-motion';

const UploadResume: React.FC = () => {
  const navigate = useNavigate();
  // We will temporarily store extracted skills in local storage or state to pass to ResumeSkills view
  const [isUploading, setIsUploading] = useState(false);

  const handleFileUpload = async (file: File) => {
    try {
      setIsUploading(true);
      // Backend returns ResumeAnalysisOut with {target_role, experience_level, skills}
      const data = await resumeApi.uploadResume(file);
      
      // Store in session storage so the next screen can read it
      sessionStorage.setItem('r2i_resume_analysis', JSON.stringify(data));
      
      toast.success('Resume analyzed successfully!');
      // Navigate to the skills confirmation screen
      navigate('/resume-skills');
    } catch (error: any) {
      console.error(error);
      toast.error(error.response?.data?.detail || 'Failed to process resume. Please try a different PDF.');
    } finally {
      setIsUploading(false);
    }
  };

  return (
    <div className="max-w-4xl mx-auto py-8">
      <PageHeader 
        title="Upload Resume"
        description="Provide your latest PDF resume. Our NLP pipeline will extract your core competencies, tech stack, and experience level to tailor your interview."
      />

      <motion.div 
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.4 }}
        className="mt-8"
      >
        <FileDropzone 
          onFileSelect={handleFileUpload} 
          isLoading={isUploading}
          accept={{ 'application/pdf': ['.pdf'] }}
        />
        
        <div className="mt-8 grid grid-cols-1 md:grid-cols-3 gap-6">
          <div className="bg-surface p-6 rounded-xl border border-border">
            <div className="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center text-primary font-bold mb-4">1</div>
            <h4 className="font-syne font-semibold mb-2 text-foreground">Extract Skills</h4>
            <p className="text-sm text-muted-foreground leading-relaxed">We utilize spaCy NLP to identify your programming languages, frameworks, and tools contextually.</p>
          </div>
          
          <div className="bg-surface p-6 rounded-xl border border-border">
            <div className="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center text-primary font-bold mb-4">2</div>
            <h4 className="font-syne font-semibold mb-2 text-foreground">Determine Role</h4>
            <p className="text-sm text-muted-foreground leading-relaxed">Your professional summary and experience establish the target difficulty and position type.</p>
          </div>
          
          <div className="bg-surface p-6 rounded-xl border border-border">
            <div className="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center text-primary font-bold mb-4">3</div>
            <h4 className="font-syne font-semibold mb-2 text-foreground">Generate Questions</h4>
            <p className="text-sm text-muted-foreground leading-relaxed">A custom generative model creates unique questions challenging your specific claimed knowledge.</p>
          </div>
        </div>
      </motion.div>
    </div>
  );
};

export default UploadResume;
