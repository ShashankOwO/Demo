import React from 'react';
import { useQuery } from '@tanstack/react-query';
import { useNavigate } from 'react-router-dom';
import { profileApi } from '@/api/profile.api';
import { useAuthStore } from '@/store/authStore';
import { PageHeader } from '@/components/shared/PageHeader';
import { Card, CardContent } from '@/components/ui/card';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Separator } from '@/components/ui/separator';
import { SkeletonCard } from '@/components/shared/SkeletonCard';
import { Pencil, MapPin, Briefcase } from 'lucide-react';

const Profile: React.FC = () => {
  const navigate = useNavigate();
  const { user } = useAuthStore();

  const { data: profile, isLoading } = useQuery({
    queryKey: ['profile'],
    queryFn: profileApi.getProfile,
  });

  const displayProfile = profile || user;

  if (isLoading) return (
    <div className="max-w-3xl mx-auto py-8 space-y-6">
      <SkeletonCard className="h-48" />
      <SkeletonCard className="h-64" />
    </div>
  );


  return (
    <div className="max-w-4xl mx-auto py-8 space-y-8">
      <PageHeader
        title="Your Profile"
        description="Your public professional presence and extracted technical skillset."
        action={
          <Button onClick={() => navigate('/edit-profile')} className="gap-2" variant="outline">
            <Pencil className="w-4 h-4" />
            Edit Profile
          </Button>
        }
      />

      {/* Hero Card */}
      <Card className="bg-surface border-border overflow-hidden">
        {/* Top colorbar */}
        <div className="h-28 bg-gradient-to-r from-primary/30 via-primary/10 to-transparent"></div>
        <CardContent className="relative px-6 pb-8">
          <div className="flex flex-col sm:flex-row sm:items-end gap-4 -mt-14">
            <Avatar className="h-24 w-24 ring-4 ring-card shadow-xl shrink-0">
              <AvatarImage src={displayProfile?.profile_photo_url || ''} alt={displayProfile?.name || 'User'} />
              <AvatarFallback className="bg-primary/20 text-primary text-3xl font-syne">
                {displayProfile?.name?.charAt(0).toUpperCase() || 'U'}
              </AvatarFallback>
            </Avatar>
            <div className="pb-2 flex-1">
              <h2 className="text-2xl font-syne font-bold text-foreground">{displayProfile?.name}</h2>
              <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-sm text-muted-foreground mt-1">
                {displayProfile?.title && (
                  <span className="flex items-center gap-1.5"><Briefcase className="w-4 h-4" />{displayProfile.title}</span>
                )}
                {displayProfile?.location && (
                  <span className="flex items-center gap-1.5"><MapPin className="w-4 h-4" />{displayProfile.location}</span>
                )}
                {displayProfile?.experience_level && (
                  <span className="flex items-center gap-1.5"><Briefcase className="w-4 h-4" />{displayProfile.experience_level} level</span>
                )}
              </div>
            </div>
          </div>

          {displayProfile?.bio && (
            <>
              <Separator className="my-6 bg-border/50" />
              <p className="text-muted-foreground leading-relaxed">{displayProfile.bio}</p>
            </>
          )}
        </CardContent>
      </Card>


    </div>
  );
};

export default Profile;
