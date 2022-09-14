% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB HOMEWORK / Submitted to: Dr. Ahmed Rashed
clc
clearvars
close all
x0=-1;
v0=0;
w_n=1;
f_n=w_n/2/pi;
T_n=1/f_n;
zeta_vec=[0,.1,.2,.4,1/sqrt(2),1,2];
legend_string={'$\zeta = 0$','$\zeta = 0.1$','$\zeta = 0.2$','$\zeta = 0.4$','$\zeta=1/\sqrt{2}$','$\zeta = 1$','$\zeta = 2$'};
t_vec=linspace(0,2,1000)*T_n ;%Create 1000 point
figure
hold on
for zeta=zeta_vec
x_vec=SDOF_Free_Response_Visc(w_n,zeta,x0,v0,t_vec);
plot(t_vec/T_n,x_vec)
end
title('$x(t)$ for $\omega_{n}=1$, $x_{0}=-1$ and $v_{0}=0$','interpreter','latex');
xlabel('$t/T_{n}\qquad,:T_{n}=1/f_{n}=2\pi/\omega_{n}$','interpreter','latex');
% plot the legend
legend(legend_string,'interpreter','latex','Location','southeast')