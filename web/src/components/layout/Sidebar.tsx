import React from 'react';
import { NavLink } from 'react-router-dom';
import { Home, Mic, BarChart2, User, LogOut, Settings, HelpCircle, Shield } from 'lucide-react';
import { useAuthStore } from '@/store/authStore';

const navItems = [
  { label: 'Dashboard', path: '/home', icon: Home },
  { label: 'Live Interview', path: '/resume-skills', icon: Mic },
  { label: 'Reports', path: '/reports', icon: BarChart2 },
  { label: 'Profile', path: '/profile', icon: User },
];

const bottomNavItems = [
  { label: 'Preferences', path: '/preferences', icon: Settings },
  { label: 'Help Center', path: '/help', icon: HelpCircle },
  { label: 'Privacy Policy', path: '/privacy', icon: Shield },
];

export const Sidebar: React.FC = () => {
  const { logout } = useAuthStore();

  const handleLogout = () => {
    logout();
    window.location.href = '/login';
  };

  return (
    <aside
      className="fixed top-[56px] left-0 h-[calc(100vh-56px)] w-[var(--sidebar-w)] bg-[#080c18] border-r border-white/[0.06] flex flex-col z-[100] transition-[width] duration-[220ms] ease-[cubic-bezier(0.4,0,0.2,1)] overflow-hidden"
    >
      {/* SIDEBAR HEADER - Logo Area */}
      <div className="flex items-center px-[16px] py-[16px] border-b border-white/[0.06] overflow-hidden">
        <div className="w-[32px] h-[32px] rounded-[8px] bg-gradient-to-br from-[#6c63ff] to-[#4f46e5] flex items-center justify-center text-white font-syne font-bold text-[16px] flex-shrink-0 shadow-[0_2px_10px_rgba(108,99,255,0.4)] mr-[12px]">
          R
        </div>
        <span className="sidebar-app-name font-syne font-semibold text-[14px] text-white whitespace-nowrap overflow-hidden opacity-100 transition-opacity duration-[180ms] ease-out block" style={{ width: 'calc(var(--sidebar-w) - 76px)' }}>
          Resume2Interview
        </span>
      </div>

      {/* Nav Items */}
      <nav className="flex-1 mt-[8px]">
        {navItems.map((item) => (
          <NavLink
            key={item.path}
            to={item.path}
            className={({ isActive }) =>
              `flex items-center gap-[12px] px-[14px] py-[10px] rounded-[10px] mx-[8px] my-[2px] cursor-pointer whitespace-nowrap transition-colors duration-150 ease-out
               ${isActive 
                  ? 'bg-[#6c63ff]/15 text-[#a5b4fc]' 
                  : 'text-slate-400 hover:bg-white/[0.06] hover:text-slate-200'
               }`
            }
          >
            {({ isActive }) => (
              <>
                <div className="flex-shrink-0 flex items-center justify-center w-[20px] h-[20px]">
                  <item.icon size={20} fill={isActive ? "currentColor" : "none"} />
                </div>
                <span className="nav-label text-[13px] font-medium block" style={{ width: 'calc(var(--sidebar-w) - 76px)', overflow: 'hidden' }}>{item.label}</span>
              </>
            )}
          </NavLink>
        ))}
      </nav>

      {/* Bottom Nav Items */}
      <div className="mt-auto mb-[8px] border-t border-white/[0.06] pt-[8px]">
        {bottomNavItems.map((item) => (
          <NavLink
            key={item.path}
            to={item.path}
            className={({ isActive }) =>
              `flex items-center gap-[12px] px-[14px] py-[10px] rounded-[10px] mx-[8px] my-[2px] cursor-pointer whitespace-nowrap transition-colors duration-150 ease-out
               ${isActive 
                  ? 'bg-[#6c63ff]/15 text-[#a5b4fc]' 
                  : 'text-slate-400 hover:bg-white/[0.06] hover:text-slate-200'
               }`
            }
          >
            {({ isActive }) => (
              <>
                <div className="flex-shrink-0 flex items-center justify-center w-[20px] h-[20px]">
                  <item.icon size={20} fill={isActive ? "currentColor" : "none"} />
                </div>
                <span className="nav-label text-[13px] font-medium block" style={{ width: 'calc(var(--sidebar-w) - 76px)', overflow: 'hidden' }}>{item.label}</span>
              </>
            )}
          </NavLink>
        ))}

        {/* Logout */}
        <button
          onClick={handleLogout}
          className="w-full flex items-center gap-[12px] px-[14px] py-[10px] rounded-[10px] mx-[8px] my-[2px] cursor-pointer whitespace-nowrap transition-colors duration-150 ease-out text-slate-400 hover:bg-red-500/10 hover:text-red-400"
          style={{ width: 'calc(100% - 16px)' }}
        >
          <div className="flex-shrink-0 flex items-center justify-center w-[20px] h-[20px]">
            <LogOut size={20} />
          </div>
          <span className="nav-label text-[13px] font-medium block" style={{ width: 'calc(var(--sidebar-w) - 76px)', overflow: 'hidden', textAlign: 'left' }}>Logout</span>
        </button>
      </div>
    </aside>
  );
};
