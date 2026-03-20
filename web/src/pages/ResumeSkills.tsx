import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { PageHeader } from '@/components/shared/PageHeader';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Loader2, Mic, AlertCircle, ArrowRight, Edit2, X, Plus, Check } from 'lucide-react';
import { resumeApi } from '@/api/resume.api';
import { profileApi } from '@/api/profile.api';
import { useInterviewStore } from '@/store/interviewStore';
import { useAuthStore } from '@/store/authStore';
import toast from 'react-hot-toast';

export default function ResumeSkills() {
  const navigate = useNavigate();
  const { setQuestions, setTargetRole: setGlobalTargetRole } = useInterviewStore();
  const { user, updateUser } = useAuthStore();
  
  const [targetRole, setTargetRole] = useState<string>('');
  const [experienceLevel, setExperienceLevel] = useState<string>('');
  const [experienceYears, setExperienceYears] = useState<number>(0);
  const [categorizedSkills, setCategorizedSkills] = useState<Record<string, string[]>>({});
  const [selectedSkills, setSelectedSkills] = useState<string[]>([]);
  const [isGenerating, setIsGenerating] = useState(false);
  const [isEditingSkills, setIsEditingSkills] = useState(false);
  const [newSkillText, setNewSkillText] = useState('');
  const [newSkillCategory, setNewSkillCategory] = useState('misc');
  const [isSaving, setIsSaving] = useState(false);

  useEffect(() => {
    // Refresh the user profile in background to avoid stale skills_json
    profileApi.getProfile().then(profile => {
      updateUser(profile as any);
    }).catch(console.error);

    // 1st priority: Newly uploaded resume data
    const sessionData = sessionStorage.getItem('r2i_resume_analysis');
    
    if (sessionData) {
      try {
        const parsed = JSON.parse(sessionData);
        setTargetRole(parsed.inferred_target_role || parsed.target_role || 'Software Engineer');
        setExperienceLevel(parsed.experience_level || 'Intermediate');
        setExperienceYears(parsed.detected_experience_years ?? 3);
        
        // Extract skills — backend upload returns 'technical_skills', not 'skills'
        let skillsBucket: Record<string, string[]> = {};
        if (parsed.technical_skills) {
           skillsBucket = { ...parsed.technical_skills };
        } else if (parsed.skills) {
           skillsBucket = { ...parsed.skills };
        }
        
        // Also capture soft skills if available
        if (parsed.soft_skills && Array.isArray(parsed.soft_skills)) {
          skillsBucket['soft_skills'] = parsed.soft_skills;
        }
        
        setCategorizedSkills(skillsBucket);
        
        // Auto-select all by default
        const allSkills: string[] = [];
        Object.values(skillsBucket).forEach(arr => {
          if (Array.isArray(arr)) {
            allSkills.push(...arr);
          }
        });
        setSelectedSkills(allSkills);
      } catch (e) {
        console.error("Failed parsing resume session data");
      }
    } 
    // 2nd priority: Already active profile data
    else if (user?.experience_level && user?.skills_json) {
      setTargetRole(user.target_role || 'Software Engineer');
      setExperienceLevel(user.experience_level);
      setExperienceYears(user.experience_years || 3);
      
      let skillsBucket: Record<string, string[]> = {};
      try {
        skillsBucket = typeof user.skills_json === 'string' ? JSON.parse(user.skills_json) : user.skills_json;
      } catch(e) {}
      
      setCategorizedSkills(skillsBucket);
      
      const allSkills: string[] = [];
      Object.values(skillsBucket).forEach(arr => {
        if (Array.isArray(arr)) {
          allSkills.push(...arr);
        }
      });
      setSelectedSkills(allSkills);
    }
    // 3rd Priority: Bounce to upload
    else {
      toast("Please upload a resume first to generate questions.");
      navigate('/upload-resume');
    }
  }, [user, navigate]);

  const toggleSkill = (skill: string) => {
    setSelectedSkills(prev => 
      prev.includes(skill) ? prev.filter(s => s !== skill) : [...prev, skill]
    );
  };

  const handleGenerateQuestions = async () => {
    if (selectedSkills.length === 0) {
      toast.error("Please select at least one skill.");
      return;
    }

    try {
      setIsGenerating(true);
      toast("Generating custom questions. This takes ~15-30s...", { icon: '⏳', duration: 5000 });
      
      const payload = {
        skills: selectedSkills,
        target_role: targetRole,
        experience_years: experienceYears
      };
      
      const res = await resumeApi.generateQuestions(payload);
      
      // Backend returns 'generated_questions', not 'questions'
      setQuestions(res.generated_questions);
      setGlobalTargetRole(targetRole);
      
      // Clear session data if we wanted to
      sessionStorage.removeItem('r2i_resume_analysis');
      
      toast.success("Ready! Starting interview.");
      navigate('/interview');
      
    } catch (error: any) {
      console.error(error);
      toast.error(error.response?.data?.detail || "AI question generation failed. Please try again.");
    } finally {
      setIsGenerating(false);
    }
  };

  const handleAddCustomSkill = () => {
    if (!newSkillText.trim()) return;
    const skill = newSkillText.trim();
    
    const updated = { ...categorizedSkills };
    if (!updated[newSkillCategory]) updated[newSkillCategory] = [];
    if (!updated[newSkillCategory].includes(skill)) {
      updated[newSkillCategory].push(skill);
      setCategorizedSkills(updated);
      setSelectedSkills(prev => [...prev, skill]);
      setNewSkillText('');
    } else {
      toast.error("Skill already exists.");
    }
  };

  const handleRemoveSkill = (category: string, skill: string) => {
    const updated = { ...categorizedSkills };
    updated[category] = updated[category].filter(s => s !== skill);
    setCategorizedSkills(updated);
    setSelectedSkills(prev => prev.filter(s => s !== skill));
  };

  const handleSaveSkillsToProfile = async () => {
    try {
      setIsSaving(true);

      // Normalize the skills_json into canonical keys that Android also understands:
      // - 'languages'    → Technical Skills  (matches Android's filter: !soft_skills && !tools_frameworks)
      // - 'frameworks'   → Tools & Frameworks (matches Android's 'tools_frameworks' OR 'frameworks' key)
      // - 'soft_skills'  → Soft Skills        (exact key Android reads)
      // - 'misc'         → Communication Skills (extra bucket)
      const normalizedSkills: Record<string, string[]> = {};

      const TECH_CATS = ['languages', 'database', 'ai', 'architecture', 'programming_languages',
                         'databases', 'cloud', 'technical', 'core_skills'];
      const TOOLS_CATS = ['web', 'backend', 'frontend', 'mobile', 'devops', 'testing',
                          'frameworks', 'tools', 'technologies'];
      const SOFT_CATS = ['soft_skills', 'interpersonal'];

      const techArr: string[] = [];
      const toolsArr: string[] = [];
      const softArr: string[] = [];
      const miscArr: string[] = [];

      Object.entries(categorizedSkills).forEach(([cat, skills]) => {
        if (!Array.isArray(skills)) return;
        if (TECH_CATS.includes(cat)) techArr.push(...skills);
        else if (TOOLS_CATS.includes(cat)) toolsArr.push(...skills);
        else if (SOFT_CATS.includes(cat)) softArr.push(...skills);
        else miscArr.push(...skills);
      });

      if (techArr.length)  normalizedSkills['languages']       = techArr;
      if (toolsArr.length) normalizedSkills['tools_frameworks'] = toolsArr;
      if (softArr.length)  normalizedSkills['soft_skills']     = softArr;
      if (miscArr.length)  normalizedSkills['misc']            = miscArr;

      await profileApi.updateProfile({
        skills_json: JSON.stringify(normalizedSkills),
        target_role: targetRole,
        experience_level: experienceLevel,
        experience_years: experienceYears
      } as any);
      toast.success("Profile updated successfully.");
      setIsEditingSkills(false);
    } catch (e) {
      toast.error("Failed to save profile.");
    } finally {
      setIsSaving(false);
    }
  };

  // Group skills into the 3 explicit categories requested by user
  const groupedSkills = React.useMemo(() => {
    const groups: Record<string, string[]> = {
      "Technical Skills": [],
      "Soft Skills": [],
      "Tools & Frameworks": [],
    };

    Object.entries(categorizedSkills).forEach(([category, skills]) => {
      if (!Array.isArray(skills)) return;
      
      if (['languages', 'database', 'ai', 'architecture', 'programming_languages', 'databases', 'cloud', 'technical', 'core_skills'].includes(category)) {
        groups["Technical Skills"].push(...skills);
      } else if (['web', 'backend', 'frontend', 'mobile', 'devops', 'testing', 'frameworks', 'tools', 'technologies', 'tools_frameworks'].includes(category)) {
        groups["Tools & Frameworks"].push(...skills);
      } else {
        // Everything else (soft_skills, interpersonal, misc, communication) → Soft Skills
        groups["Soft Skills"].push(...skills);
      }
    });

    // Remove empty groups
    return Object.fromEntries(
      Object.entries(groups).filter(([_, skills]) => skills.length > 0)
    );
  }, [categorizedSkills]);

  const sortedCategories = Object.keys(groupedSkills).sort((a, b) => {
    const order = ["Technical Skills", "Tools & Frameworks", "Soft Skills"];
    return order.indexOf(a) - order.indexOf(b);
  });

  return (
    <div className="max-w-4xl mx-auto py-8 space-y-8">
      <PageHeader 
        title="Interview Configuration" 
        description="Verify the extracted parameters and select the skills you want to be tested on during this session."
      />

      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {/* Meta info card */}
        <Card className="bg-surface border-border md:col-span-1 border-l-4 border-l-emerald-500 shadow-sm h-fit">
          <CardContent className="p-6">
            <div className="flex items-center justify-between mb-6">
              <h3 className="font-syne font-semibold text-lg text-slate-200">Target Profile</h3>
              <span className="bg-emerald-50 text-emerald-600 text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider border border-emerald-200">
                Active
              </span>
            </div>
            
            <div className="space-y-5">
              <div>
                <p className="text-xs text-muted-foreground uppercase tracking-wider font-semibold mb-1">Role you're prepping for</p>
                {isEditingSkills ? (
                  <input type="text" value={targetRole} onChange={e => setTargetRole(e.target.value)} className="w-full bg-surface-2 border border-border rounded-md px-2 py-1.5 text-sm text-foreground mt-1 focus:outline-none focus:border-indigo-500/50" />
                ) : (
                  <p className="font-medium text-foreground">{targetRole}</p>
                )}
              </div>
              <div>
                <p className="text-xs text-muted-foreground uppercase tracking-wider font-semibold mb-1">Experience Overview (Level, Years)</p>
                {isEditingSkills ? (
                  <div className="flex gap-2 mt-1">
                     <select value={experienceLevel} onChange={e => setExperienceLevel(e.target.value)} className="bg-surface-2 border border-border rounded-md px-2 py-1.5 text-sm text-foreground flex-1 focus:outline-none focus:border-indigo-500/50">
                       <option value="Beginner">Beginner</option>
                       <option value="Intermediate">Intermediate</option>
                       <option value="Expert">Expert</option>
                     </select>
                     <input type="number" min={0} value={experienceYears} onChange={e => setExperienceYears(parseInt(e.target.value)||0)} className="w-20 bg-surface-2 border border-border rounded-md px-2 py-1.5 text-sm text-foreground focus:outline-none focus:border-indigo-500/50" />
                  </div>
                ) : (
                  <p className="font-medium text-foreground">{experienceLevel}{experienceYears > 0 ? `, ${experienceYears} Years` : ''}</p>
                )}
              </div>
            </div>
            
            <div className="mt-6 pt-4 border-t border-border flex items-start gap-2 text-xs text-muted-foreground">
              <AlertCircle className="w-4 h-4 shrink-0 mt-0.5" />
              <p>Questions will be calibrated to this specific difficulty level.</p>
            </div>
          </CardContent>
        </Card>

        {/* Skills Selection */}
        <Card className="bg-surface border-border md:col-span-2">
          <CardContent className="p-6">
            <div className="flex items-center justify-between mb-6">
              <div className="flex items-center gap-3">
                <h3 className="font-syne font-semibold text-lg">Skills Extracted</h3>
                <button 
                  onClick={() => setIsEditingSkills(!isEditingSkills)} 
                  className={`p-1.5 rounded-md transition-colors ${isEditingSkills ? 'bg-[#6c63ff]/20 text-[#6c63ff]' : 'text-slate-400 hover:text-[#6c63ff] hover:bg-slate-800'}`}
                  title="Edit Skills"
                >
                  <Edit2 className="w-[14px] h-[14px]" />
                </button>
              </div>
              
              {isEditingSkills ? (
                <Button 
                  size="sm" 
                  onClick={handleSaveSkillsToProfile}
                  disabled={isSaving}
                  className="bg-[#6c63ff] hover:bg-[#5b54d6] text-white h-8 text-xs font-medium"
                >
                  {isSaving ? <Loader2 className="w-3 h-3 animate-spin mr-1.5" /> : <Check className="w-3 h-3 mr-1.5" />}
                  Save Changes
                </Button>
              ) : (
                <p className="text-sm text-muted-foreground">
                  <span className="text-foreground font-medium">{selectedSkills.length}</span> selected
                </p>
              )}
            </div>

            {sortedCategories.length === 0 && !isEditingSkills ? (
              <div className="text-center py-8 text-muted-foreground text-sm border border-dashed border-border rounded-lg">
                No technical skills extracted. You can still generate general questions.
              </div>
            ) : (
              <div className="space-y-6">
                {isEditingSkills && (
                  <div className="flex flex-col sm:flex-row items-center gap-2 mb-4 p-3 rounded-lg bg-surface-2 border border-border">
                    <input 
                      type="text" 
                      value={newSkillText}
                      onChange={(e) => setNewSkillText(e.target.value)}
                      onKeyDown={(e) => e.key === 'Enter' && handleAddCustomSkill()}
                      placeholder="Add a custom skill missed by AI..." 
                      className="flex-1 bg-transparent border-none text-sm text-slate-200 outline-none placeholder:text-slate-500 min-w-[200px]"
                    />
                    <div className="flex items-center gap-2 w-full sm:w-auto">
                      <select 
                        value={newSkillCategory} 
                        onChange={e => setNewSkillCategory(e.target.value)} 
                        className="bg-[#0f1523] border border-border rounded-md px-2 py-1.5 text-xs text-slate-300 focus:outline-none flex-1 sm:flex-none"
                      >
                        <option value="soft_skills">Soft Skills</option>
                        <option value="languages">Technical Skills</option>
                        <option value="tools_frameworks">Tools & Frameworks</option>
                      </select>
                      <Button size="sm" variant="secondary" onClick={handleAddCustomSkill} className="h-7 text-xs px-3">
                        <Plus className="w-3 h-3 mr-1.5" /> Add
                      </Button>
                    </div>
                  </div>
                )}
                
                {sortedCategories.map(category => {
                  /* Map back group names to backend keys for deletion */
                  const underlyingCategory = Object.keys(categorizedSkills).find(key => 
                    groupedSkills[category].some(s => categorizedSkills[key]?.includes(s))
                  ) || 'misc';

                  return (
                    <div key={category}>
                      <h4 className="text-sm font-semibold text-slate-200 mb-3 font-syne tracking-wide">
                        {category}
                      </h4>
                      <div className="flex flex-wrap gap-2">
                        {groupedSkills[category].map(skill => {
                          const isSelected = selectedSkills.includes(skill);
                          
                          if (isEditingSkills) {
                            return (
                              <div key={skill} className="flex items-center gap-1.5 px-3 py-1.5 rounded-full text-sm font-medium bg-surface-2 text-slate-300 border border-slate-700/50">
                                {skill}
                                <button onClick={() => handleRemoveSkill(underlyingCategory, skill)} className="text-slate-500 hover:text-red-400 p-0.5 rounded-full hover:bg-red-400/10 transition-colors">
                                  <X className="w-3 h-3" />
                                </button>
                              </div>
                            );
                          }

                          return (
                            <button
                              key={skill}
                              type="button"
                              onClick={() => toggleSkill(skill)}
                            className={`px-3 py-1.5 rounded-full text-sm font-medium transition-all duration-200 border 
                              ${isSelected 
                                ? 'bg-indigo-500/10 text-indigo-600 border-indigo-500/30 hover:bg-indigo-500/20 shadow-sm' 
                                : 'bg-surface-2 text-slate-500 border-border hover:border-slate-300 hover:text-slate-800'
                              }`}
                          >
                            {skill}
                          </button>
                        );
                      })}
                    </div>
                  </div>
                );
              })}
              </div>
            )}

            <div className="mt-8 pt-6 border-t border-border flex justify-end gap-4">
              <Button 
                variant="outline" 
                onClick={() => navigate('/upload-resume')}
                disabled={isGenerating || isEditingSkills}
              >
                Start Over
              </Button>
              <Button 
                onClick={handleGenerateQuestions} 
                disabled={isGenerating || selectedSkills.length === 0}
                className="bg-indigo-600 hover:bg-indigo-700 text-white min-w-[200px] gap-2"
              >
                {isGenerating ? (
                  <>
                    <Loader2 className="w-4 h-4 animate-spin" />
                    Generating...
                  </>
                ) : (
                  <>
                    <Mic className="w-4 h-4" />
                    Generate & Start
                  </>
                )}
              </Button>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
