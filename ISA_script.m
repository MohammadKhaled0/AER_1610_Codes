% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%----------------------------------------------------
clc, clear, close all
% ---------------------givens------------------------
R=287.04;
g_0=9.80665;
r= 6.356766e6;
gamma=1.4;
N_layer=50;
h_G0_vec=[0,11000,25000,47000,53000,79000,90000,105000];
T_0_vec=[288.16,216.66,216.66,282.66,282.66,165.66,165.66];
p_0_vec=[101330,22632,2488.6,120.44,58.321,1.0094,0.10444];
a_0_vec=[-0.0065,0.003,-0.0045,0.004];
%--------------------------------------------------
h_G_row1=linspace(h_G0_vec(1),h_G0_vec(2),N_layer);
h_G_row2=linspace(h_G0_vec(2),h_G0_vec(3),N_layer);
h_G_row3=linspace(h_G0_vec(3),h_G0_vec(4),N_layer);
h_G_row4=linspace(h_G0_vec(4),h_G0_vec(5),N_layer);
h_G_row5=linspace(h_G0_vec(5),h_G0_vec(6),N_layer);
h_G_row6=linspace(h_G0_vec(6),h_G0_vec(7),N_layer);
h_G_row7=linspace(h_G0_vec(7),h_G0_vec(8),N_layer);
 

h_G_vec=[h_G_row1,h_G_row2,h_G_row3,h_G_row4,h_G_row5,h_G_row6,h_G_row7];
%-----------------Tempreature & pressure caclulations---------------------
T_row1=T_0_vec(1)+a_0_vec(1)*(h_G_row1-h_G0_vec(1));
p_row1=p_0_vec(1)*(T_row1/T_0_vec(1)).^(-g_0/a_0_vec(1)/R);
%---------------------
T_row2=T_0_vec(2)*ones(1,N_layer);
p_row2=p_0_vec(2)* exp(-g_0*(h_G_row2 - h_G0_vec(2))/R/T_0_vec(2));
%---------------------
T_row3=T_0_vec(3)+a_0_vec(2)*(h_G_row3-h_G0_vec(3));
p_row3=p_0_vec(3)*(T_row3/T_0_vec(3)).^(-g_0/a_0_vec(2)/R);
%---------------------
T_row4=T_0_vec(4)*ones(1,N_layer);
p_row4=p_0_vec(4)* exp(-g_0*(h_G_row4 - h_G0_vec(4))/R/T_0_vec(4));
%---------------------
T_row5=T_0_vec(5)+a_0_vec(3)*(h_G_row5-h_G0_vec(5));
p_row5=p_0_vec(5)*(T_row5/T_0_vec(5)).^(-g_0/a_0_vec(3)/R);
%---------------------
T_row6=T_0_vec(6)*ones(1,N_layer);
p_row6=p_0_vec(6)* exp(-g_0*(h_G_row6 - h_G0_vec(6))/R/T_0_vec(6));
%---------------------
T_row7=T_0_vec(7)+a_0_vec(4)*(h_G_row7-h_G0_vec(7));
p_row7=p_0_vec(7)*(T_row7/T_0_vec(7)).^(-g_0/a_0_vec(4)/R)
%---------------------
T_vec=[T_row1,T_row2,T_row3,T_row4,T_row5,T_row6,T_row7];
p_vec=[p_row1,p_row2,p_row3,p_row4,p_row5,p_row6,p_row7];
%--------------altitude,speed of sound ,density calc-------------------
h_vec=r*h_G_vec./(r+h_G_vec);
a_vec=sqrt(gamma*R*T_vec);
rho_vec=p_vec./T_vec/R;
%------------------plotting-------------------------
figure
plot(h_vec/1e3,h_G_vec/1e3)
xlabel('h (km)')
ylabel('h_{G} (km)')

figure
subplot(1,2,1)
plot(T_vec-273,h_G_vec/1e3)
xlabel('T {^{o}C}')
ylabel('h_{G} (km)')

subplot(1,2,2)
plot(a_vec/1e3*60*60,h_G_vec/1e3)
xlabel('a (km/hr)')
ylabel('h_{G} (km)')

figure
subplot(1,2,1)
plot(p_vec/1e5,h_G_vec/1e3)
xlabel('p (bar)')
ylabel('h_{G} (km)')

subplot(1,2,2)
plot(rho_vec,h_G_vec/1e3)
xlabel('\rho (kg/m^3)')
ylabel('h_{G} (km)')


