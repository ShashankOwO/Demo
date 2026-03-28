import React, { useState, useEffect, useRef } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import * as z from 'zod';
import { authApi } from '@/api/auth.api';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { motion, AnimatePresence } from 'framer-motion';
import { Loader2, ArrowLeft, MailCheck, RefreshCw } from 'lucide-react';
import toast from 'react-hot-toast';

const emailSchema = z.object({
  email: z.string().email({ message: 'Please enter a valid email address' }),
});

const resetSchema = z.object({
  code: z.string().length(6, { message: 'OTP must be exactly 6 digits' }),
  new_password: z.string().min(8, { message: 'Password must be at least 8 characters' }),
  confirm_password: z.string()
}).refine((data) => data.new_password === data.confirm_password, {
  message: "Passwords don't match",
  path: ["confirm_password"],
});

type EmailFormValues = z.infer<typeof emailSchema>;
type ResetFormValues = z.infer<typeof resetSchema>;

const ForgotPassword: React.FC = () => {
  const navigate = useNavigate();
  const [step, setStep] = useState<1 | 2>(1);
  const [email, setEmail] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [resendCooldown, setResendCooldown] = useState(60);
  const [isResending, setIsResending] = useState(false);
  const cooldownRef = useRef<ReturnType<typeof setInterval> | null>(null);
  
  const emailForm = useForm<EmailFormValues>({ resolver: zodResolver(emailSchema) });
  const resetForm = useForm<ResetFormValues>({ resolver: zodResolver(resetSchema) });

  useEffect(() => {
    if (step === 2) {
      setResendCooldown(60);
      cooldownRef.current = setInterval(() => {
        setResendCooldown(prev => {
          if (prev <= 1) { clearInterval(cooldownRef.current!); return 0; }
          return prev - 1;
        });
      }, 1000);
    }
    return () => { if (cooldownRef.current) clearInterval(cooldownRef.current); };
  }, [step]);

  const handleResend = async () => {
    if (resendCooldown > 0 || isResending) return;
    setIsResending(true);
    try {
      await authApi.requestReset(email);
      toast.success('New OTP sent!');
      setResendCooldown(60);
      cooldownRef.current = setInterval(() => {
        setResendCooldown(prev => {
          if (prev <= 1) { clearInterval(cooldownRef.current!); return 0; }
          return prev - 1;
        });
      }, 1000);
    } catch {
      toast.error('Failed to resend OTP');
    } finally {
      setIsResending(false);
    }
  };

  const onEmailSubmit = async (data: EmailFormValues) => {
    try {
      setError(null);
      await authApi.requestReset(data.email);
      setEmail(data.email);
      setStep(2);
      toast.success('OTP sent to your email');
    } catch (err: any) {
      setError(err.response?.data?.message || 'Failed to request reset. Please check your email.');
    }
  };

  const onResetSubmit = async (data: ResetFormValues) => {
    try {
      setError(null);
      // Backend schema expects field named 'code', not 'otp'
      await authApi.resetPassword({ email, code: data.code, new_password: data.new_password });
      toast.success('Password reset successfully! Please log in.');
      navigate('/login');
    } catch (err: any) {
      setError(err.response?.data?.message || 'Invalid OTP or reset failed.');
    }
  };

  return (
    <div className="min-h-screen w-full flex bg-background items-center justify-center p-4 sm:p-8">
      <motion.div 
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.3 }}
        className="w-full max-w-md bg-surface border border-border rounded-2xl p-8 shadow-[var(--shadow)]"
      >
        <Link to="/login" className="inline-flex items-center text-sm text-muted-foreground hover:text-primary transition-colors mb-8">
          <ArrowLeft className="w-4 h-4 mr-2" />
          Back to login
        </Link>
        
        <AnimatePresence mode="wait">
          {step === 1 ? (
            <motion.div
              key="step1"
              initial={{ opacity: 0, x: -20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: 20 }}
              transition={{ duration: 0.3 }}
            >
              <h2 className="text-3xl font-syne font-bold mb-2 text-foreground">Forgot password?</h2>
              <p className="text-muted-foreground mb-8">Enter your email and we'll send you an OTP to reset your password.</p>

              <form onSubmit={emailForm.handleSubmit(onEmailSubmit)} className="space-y-6">
                {error && (
                  <div className="p-3 rounded-lg bg-destructive/10 border border-destructive/20 text-destructive text-sm">
                    {error}
                  </div>
                )}
                
                <div className="space-y-2">
                  <Label htmlFor="email">Email</Label>
                  <Input 
                    id="email" 
                    type="email" 
                    placeholder="name@example.com"
                    className="bg-surface-3 transition-colors h-11"
                    {...emailForm.register('email')}
                  />
                  {emailForm.formState.errors.email && <p className="text-destructive text-xs mt-1">{emailForm.formState.errors.email.message}</p>}
                </div>

                <Button 
                  type="submit" 
                  className="w-full h-11 text-base bg-primary hover:bg-primary-dim text-white"
                  disabled={emailForm.formState.isSubmitting}
                >
                  {emailForm.formState.isSubmitting ? <Loader2 className="w-5 h-5 animate-spin mx-auto" /> : 'Send OTP'}
                </Button>
              </form>
            </motion.div>
          ) : (
            <motion.div
              key="step2"
              initial={{ opacity: 0, x: -20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: 20 }}
              transition={{ duration: 0.3 }}
            >
              <div className="flex items-center gap-3 mb-2">
                <div className="w-10 h-10 rounded-full bg-success/10 text-success flex items-center justify-center">
                  <MailCheck className="w-5 h-5" />
                </div>
                <h2 className="text-2xl font-syne font-bold text-foreground">Check your email</h2>
              </div>
              <p className="text-muted-foreground mb-8">We sent an OTP code to <span className="font-medium text-foreground">{email}</span></p>

              <form onSubmit={resetForm.handleSubmit(onResetSubmit)} className="space-y-5">
                {error && (
                  <div className="p-3 rounded-lg bg-destructive/10 border border-destructive/20 text-destructive text-sm">
                    {error}
                  </div>
                )}
                
                <div className="space-y-2">
                  <Label htmlFor="code">6-Digit OTP</Label>
                  <Input 
                    id="code" 
                    placeholder="123456"
                    className="bg-surface-3 transition-colors h-11 font-mono tracking-widest text-lg"
                    maxLength={6}
                    {...resetForm.register('code')}
                  />
                  {resetForm.formState.errors.code && <p className="text-destructive text-xs mt-1">{resetForm.formState.errors.code.message}</p>}
                </div>

                <div className="space-y-2">
                  <Label htmlFor="new_password">New Password</Label>
                  <Input 
                    id="new_password" 
                    type="password"
                    placeholder="••••••••"
                    className="bg-surface-3 transition-colors h-11"
                    {...resetForm.register('new_password')}
                  />
                  {resetForm.formState.errors.new_password && <p className="text-destructive text-xs mt-1">{resetForm.formState.errors.new_password.message}</p>}
                </div>

                <div className="space-y-2">
                  <Label htmlFor="confirm_password">Confirm New Password</Label>
                  <Input 
                    id="confirm_password" 
                    type="password"
                    placeholder="••••••••"
                    className="bg-surface-3 transition-colors h-11"
                    {...resetForm.register('confirm_password')}
                  />
                  {resetForm.formState.errors.confirm_password && <p className="text-destructive text-xs mt-1">{resetForm.formState.errors.confirm_password.message}</p>}
                </div>

                <Button 
                  type="submit" 
                  className="w-full h-11 text-base bg-primary hover:bg-primary-dim text-white mt-4"
                  disabled={resetForm.formState.isSubmitting}
                >
                  {resetForm.formState.isSubmitting ? <Loader2 className="w-5 h-5 animate-spin mx-auto" /> : 'Reset Password'}
                </Button>

                {/* Resend OTP */}
                <button
                  type="button"
                  onClick={handleResend}
                  disabled={resendCooldown > 0 || isResending}
                  className="w-full text-center text-sm mt-3 inline-flex items-center justify-center gap-2 transition-colors"
                  style={{ color: resendCooldown > 0 ? 'var(--muted-foreground)' : 'var(--primary)', opacity: resendCooldown > 0 ? 0.6 : 1 }}
                >
                  {isResending ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <RefreshCw className="w-3.5 h-3.5" />}
                  {resendCooldown > 0 ? `Resend OTP in ${resendCooldown}s` : "Didn't receive a code? Resend OTP"}
                </button>
              </form>
            </motion.div>
          )}
        </AnimatePresence>
      </motion.div>
    </div>
  );
};

export default ForgotPassword;
