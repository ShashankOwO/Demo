import React from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import { useAuthStore } from '@/store/authStore';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { getImageUrl } from '@/lib/utils';
import { Menu } from 'lucide-react';

const routeTitles: Record<string, string> = {
  '/home': 'Dashboard',
  '/upload-resume': 'Upload Resume',
  '/resume-skills': 'Live Interview',
  '/interview': 'Live Interview',
  '/interview-success': 'Simulation Complete',
  '/reports': 'Interview Reports',
  '/progress': 'Analytics & Progress',
  '/profile': 'Your Profile',
};

export const TopBar: React.FC = () => {
  const { user } = useAuthStore();
  const location = useLocation();
  const navigate = useNavigate();
  
  let pageTitle = routeTitles[location.pathname] || '';
  if (location.pathname.startsWith('/reports/') && location.pathname !== '/reports') {
    pageTitle = 'Report Details';
  }

  const toggleSidebar = () => {
    document.documentElement.classList.toggle('sidebar-open');
  };

  return (
    <header className="fixed top-0 left-0 right-0 h-[56px] bg-[rgba(8,12,24,0.95)] backdrop-blur-[12px] border-b border-white/[0.06] z-[200] flex items-center px-[16px] gap-[12px]">
      
      {/* 1. Hamburger button -> ONLY PLACE FOR IT */}
      <button 
        onClick={toggleSidebar} 
        className="p-[8px] -ml-[8px] rounded-[8px] transition-colors text-slate-400 hover:text-white hover:bg-slate-800/50"
        aria-label="Toggle navigation menu"
      >
        <Menu size={20} />
      </button>

      {/* 2. Page Title */}
      <h2 className="text-[15px] font-semibold tracking-tight m-0 text-slate-300">
        {pageTitle}
      </h2>

      {/* 3. User Avatar (pushed right) */}
      <div className="ml-auto flex items-center">
        <button 
          onClick={() => navigate('/profile')}
          className="flex items-center gap-[12px] p-[4px] pr-[12px] rounded-[10px] hover:bg-white/[0.04] transition-colors"
        >
          <div className="flex flex-col text-right hidden lg:flex">
            <span className="text-[13px] font-medium leading-[1] text-white">{user?.name}</span>
          </div>
          <Avatar className="h-[32px] w-[32px] ring-2 ring-transparent hover:ring-[#6c63ff]/30 transition-all border border-white/10">
            <AvatarImage src={getImageUrl(user?.profile_photo_url)} alt={user?.name || 'User'} />
            <AvatarFallback className="bg-[#6c63ff]/20 text-[#6c63ff] text-[11px] font-bold">
              {user?.name?.charAt(0).toUpperCase() || 'U'}
            </AvatarFallback>
          </Avatar>
        </button>
      </div>

    </header>
  );
};
