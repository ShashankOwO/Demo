import api from '@/lib/axios';
import { ResumeAnalysisOut, GenerateQuestionsResponse } from '@/types/resume.types';

export const resumeApi = {
  uploadResume: async (file: File, onUploadProgress?: (progressEvent: any) => void) => {
    const formData = new FormData();
    formData.append('file', file);
    const res = await api.post<ResumeAnalysisOut>('/resume/upload', formData, {
      headers: {
        'Content-Type': 'multipart/form-data',
      },
      onUploadProgress,
    });
    return res.data;
  },

  generateQuestions: async (data: { skills: any; role?: string; target_role?: string; experience_years?: number; }) => {
    const res = await api.post<GenerateQuestionsResponse>('/resume/generate-questions', data);
    return res.data;
  },
};
