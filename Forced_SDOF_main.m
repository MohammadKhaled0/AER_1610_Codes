% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
clc
clear 
close all
w_n=3;
F0=1;
m=0.5;
zeta=0;
r=[0.2,0.9,1,1.1,2];
t_vec=[0:0.1:40];
figure
N=length(r);
for n=1:N
    x_vec=SDOF_Forced_Response_Visc(w_n,zeta,F0/m,r(n),t_vec);
omega=r(n)*w_n;
    f_vec=F0*sin(omega*t_vec);
    subplot(N,1,n)
    yyaxis left
    plot(t_vec,x_vec)
    ylabel('$x(t)$','interpreter','latex')
    axis tight
    yyaxis right
    plot(t_vec,f_vec)
     ylabel(['$f(t), :r=',num2str(r(n)),'$'],'interpreter','latex')
     ylim(F0*[-1,1])
     if n~=N
         set(gca,'XTickLabel',[])
     end
end
subplot(N,1,1)
title(['$x(t)$ due to $f(t)=F_{0} \sin(\Omega t)$ for $\zeta = ',num2str(zeta),'$'],'interpreter','latex')
% title(['$x(t)$ due to $f(t)=F_{0} \sin(\omega t)$ for $\zeta = ',num2str(zeta),'$'])
subplot(N,1,N)
xlabel('$t$','interpreter','latex')
    