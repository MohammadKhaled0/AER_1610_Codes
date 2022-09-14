% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB HOMEWORK / Submitted to: Dr. Ahmed Rashed
%-----------------------------------------------------------
function plotHarmonicResponse(w_n,F0,m,zeta,r,t_vec)
figure
y_min=inf;
y_max=-inf;
N=length(r);
for n=1:N
    x_vec=SDOF_Forced_Response_Visc(w_n,zeta,F0/m,r(n),t_vec);
omega=r(n)*w_n;
    f_vec=F0*sin(omega*t_vec);
    subplot(N,1,n)
    yyaxis left
    plot(t_vec,x_vec)
    ylabel('$x(t)$','interpreter','latex')
    y_min=min(y_min,min(x_vec));
    y_max=max(y_max,max(x_vec));
    
    
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
subplot(N,1,N)
xlabel('$t$','interpreter','latex')
for n=1:N
    subplot(N,1,n)
yyaxis left
ylim([y_min,y_max])
end
    
    