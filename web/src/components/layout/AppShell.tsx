import React, { useEffect } from 'react';
import { Outlet } from 'react-router-dom';
import { Sidebar } from './Sidebar';
import { TopBar } from './TopBar';

export const AppShell: React.FC = () => {
  useEffect(() => {
    // Initialize standard open state on large screens
    if (window.innerWidth >= 1024) {
      document.documentElement.classList.add('sidebar-open');
    }
  }, []);

  return (
    <div className="min-h-screen bg-[#0a0f1e] text-[#f9fafb] flex flex-col relative overflow-hidden">
      <TopBar />
      <Sidebar />
      
      {/* 
        ZONE C: Main content wrapper
      */}
      <main 
        className="flex-1 w-full min-h-[calc(100vh-56px)] mt-[56px] ml-[var(--sidebar-w)] transition-[margin-left] duration-[220ms] ease-[cubic-bezier(0.4,0,0.2,1)] pr-[var(--sidebar-w)] overflow-x-hidden"
      >
        <div className="w-full max-w-[1400px] mx-auto p-[20px_16px] md:p-[28px_28px] animate-in fade-in duration-300">
          <Outlet />
        </div>
      </main>
    </div>
  );
};
