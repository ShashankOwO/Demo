import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import * as z from 'zod';
import { authApi } from '@/api/auth.api';
import { useAuthStore } from '@/store/authStore';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { motion, AnimatePresence } from 'framer-motion';
import { Loader2, ArrowLeft, MailCheck } from 'lucide-react';
import toast from 'react-hot-toast';

const signupSchema = z.object({
  name: z.string().min(2, { message: 'Name must be at least 2 characters' }),
  email: z.string().email({ message: 'Please enter a valid email address' }),
  password: z.string().min(8, { message: 'Password must be at least 8 characters' }),
  confirm_password: z.string()
}).refine((data) => data.password === data.confirm_password, {
  message: "Passwords don't match",
  path: ["confirm_password"],
});

const otpSchema = z.object({
  otp: z.string().length(6, { message: 'OTP must be exactly 6 characters' }),
});

type SignupFormValues = z.infer<typeof signupSchema>;
type OtpFormValues = z.infer<typeof otpSchema>;

const Signup: React.FC = () => {
  const navigate = useNavigate();
  const { login } = useAuthStore();
  const [step, setStep] = useState<1 | 2>(1);
  const [registeredEmail, setRegisteredEmail] = useState('');
  const [error, setError] = useState<string | null>(null);
  
  const { register, handleSubmit, formState: { errors, isSubmitting } } = useForm<SignupFormValues>({
    resolver: zodResolver(signupSchema),
  });

  const otpForm = useForm<OtpFormValues>({ resolver: zodResolver(otpSchema) });

  const onSubmit = async (data: SignupFormValues) => {
    try {
      setError(null);
      await authApi.register({ name: data.name, email: data.email, password: data.password });
      
      setRegisteredEmail(data.email);
      setStep(2);
      toast.success("OTP sent to your email!");
    } catch (err: any) {
      setError(err.response?.data?.message || err.response?.data?.detail || 'Failed to create account. Email may already be in use.');
    }
  };

  const onOtpSubmit = async (data: OtpFormValues) => {
    try {
      setError(null);
      const res = await authApi.verifyRegistration({ email: registeredEmail, otp: data.otp });
      if (res.access_token) {
        localStorage.setItem('r2i_token', res.access_token);
        const { profileApi } = await import('@/api/profile.api');
        const user = await profileApi.getProfile();
        
        login(res.access_token, user);
        toast.success("Account verified and created successfully!");
        navigate('/home');
      }
    } catch (err: any) {
        setError(err.response?.data?.message || 'Invalid OTP or verification failed.');
    }
  };

  return (
    <div className="min-h-screen w-full flex bg-background">
      {/* Left Branding Panel */}
      <div className="hidden lg:flex w-[40%] bg-surface border-r border-border flex-col justify-between p-12">
        <div className="flex items-center gap-3">
          <img src="/logo.png" alt="R2I Logo" className="h-10 w-auto object-contain flex-shrink-0" />
          <span className="font-syne font-bold text-2xl tracking-tight">
            Resume2<span className="text-primary">Interview</span>
          </span>
        </div>
        
        <div className="space-y-6">
          <h1 className="text-4xl xl:text-5xl font-syne font-bold leading-tight text-foreground">
            Your career,<br/>accelerated.
          </h1>
          <p className="text-lg text-muted-foreground max-w-md">
            Join thousands of candidates who improved their interview performance using advanced AI simulation.
          </p>
        </div>
        
        <div className="text-sm text-muted-foreground">
          © {new Date().getFullYear()} Resume2Interview. All rights reserved.
        </div>
      </div>

      {/* Right Form Panel */}
      <div className="flex-1 flex flex-col justify-center px-8 sm:px-16 md:px-24 lg:px-32 relative py-12">
        {/* Mobile Logo */}
        <div className="absolute top-8 left-8 flex items-center gap-2 lg:hidden">
          <img src="/logo.png" alt="R2I Logo" className="h-8 w-auto object-contain flex-shrink-0" />
          <span className="font-syne font-bold text-xl tracking-tight">R2I</span>
        </div>

        <AnimatePresence mode="wait">
          {step === 1 ? (
            <motion.div 
              key="step1"
              initial={{ opacity: 0, x: -20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: 20 }}
              transition={{ duration: 0.3 }}
              className="w-full max-w-md mx-auto"
            >
              <div className="mb-8 mt-8 lg:mt-0">
                <h2 className="text-3xl font-syne font-bold mb-2">Create an account</h2>
                <p className="text-muted-foreground">Start practicing with AI today</p>
              </div>

              <form onSubmit={handleSubmit(onSubmit)} className="space-y-5">
                {error && (
                  <div className="p-3 rounded-lg bg-destructive/10 border border-destructive/20 text-destructive text-sm">
                    {error}
                  </div>
                )}
                
                <div className="space-y-2">
                  <Label htmlFor="name">Full Name</Label>
                  <Input 
                    id="name" 
                    placeholder="John Doe"
                    className="bg-surface-3 transition-colors h-11"
                    {...register('name')}
                  />
                  {errors.name && <p className="text-destructive text-xs mt-1">{errors.name.message}</p>}
                </div>

                <div className="space-y-2">
                  <Label htmlFor="email">Email</Label>
                  <Input 
                    id="email" 
                    type="email" 
                    placeholder="name@example.com"
                    className="bg-surface-3 transition-colors h-11"
                    {...register('email')}
                  />
                  {errors.email && <p className="text-destructive text-xs mt-1">{errors.email.message}</p>}
                </div>

                <div className="space-y-2">
                  <Label htmlFor="password">Password</Label>
                  <Input 
                    id="password" 
                    type="password"
                    placeholder="••••••••"
                    className="bg-surface-3 transition-colors h-11"
                    {...register('password')}
                  />
                  {errors.password && <p className="text-destructive text-xs mt-1">{errors.password.message}</p>}
                </div>

                <div className="space-y-2">
                  <Label htmlFor="confirm_password">Confirm Password</Label>
                  <Input 
                    id="confirm_password" 
                    type="password"
                    placeholder="••••••••"
                    className="bg-surface-3 transition-colors h-11"
                    {...register('confirm_password')}
                  />
                  {errors.confirm_password && <p className="text-destructive text-xs mt-1">{errors.confirm_password.message}</p>}
                </div>

                <Button 
                  type="submit" 
                  className="w-full h-11 text-base bg-primary hover:bg-primary-dim text-white mt-6"
                  disabled={isSubmitting}
                >
                  {isSubmitting ? <Loader2 className="w-5 h-5 animate-spin mx-auto" /> : 'Get OTP'}
                </Button>
                
                <p className="text-center text-sm text-muted-foreground mt-8">
                  Already have an account?{' '}
                  <Link to="/login" className="text-primary hover:text-primary-dim font-medium transition-colors">
                    Log in
                  </Link>
                </p>
              </form>
            </motion.div>
          ) : (
            <motion.div
              key="step2"
              initial={{ opacity: 0, x: -20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: 20 }}
              transition={{ duration: 0.3 }}
              className="w-full max-w-md mx-auto"
            >
              <div className="flex items-center gap-3 mb-2 mt-8 lg:mt-0">
                <div className="w-10 h-10 rounded-full bg-success/10 text-success flex items-center justify-center">
                  <MailCheck className="w-5 h-5" />
                </div>
                <h2 className="text-2xl font-syne font-bold text-foreground">Verify your email</h2>
              </div>
              <p className="text-muted-foreground mb-8">We sent a 6-digit OTP code to <span className="font-medium text-foreground">{registeredEmail}</span></p>

              <form onSubmit={otpForm.handleSubmit(onOtpSubmit)} className="space-y-5">
                {error && (
                  <div className="p-3 rounded-lg bg-destructive/10 border border-destructive/20 text-destructive text-sm">
                    {error}
                  </div>
                )}
                
                <div className="space-y-2">
                  <Label htmlFor="otp">6-Digit OTP</Label>
                  <Input 
                    id="otp" 
                    placeholder="123456"
                    className="bg-surface-3 transition-colors h-11 font-mono tracking-widest text-lg"
                    maxLength={6}
                    {...otpForm.register('otp')}
                  />
                  {otpForm.formState.errors.otp && <p className="text-destructive text-xs mt-1">{otpForm.formState.errors.otp.message}</p>}
                </div>

                <Button 
                  type="submit" 
                  className="w-full h-11 text-base bg-primary hover:bg-primary-dim text-white mt-4"
                  disabled={otpForm.formState.isSubmitting}
                >
                  {otpForm.formState.isSubmitting ? <Loader2 className="w-5 h-5 animate-spin mx-auto" /> : 'Verify Account'}
                </Button>
                
                <button 
                  type="button"
                  onClick={() => setStep(1)}
                  className="w-full text-center text-sm text-muted-foreground hover:text-primary transition-colors mt-4 inline-flex items-center justify-center"
                >
                  <ArrowLeft className="w-4 h-4 mr-1" />
                  Back to Registration
                </button>
              </form>
            </motion.div>
          )}
        </AnimatePresence>
      </div>
    </div>
  );
};

export default Signup;
