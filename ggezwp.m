clc, clear, close all


R=287.04;
g_0=9.80665;
r= 6.356766e6;
gamma=1.4;
N_layer=50;


h_G0_vec=[0,11000,25000,47000,53000,79000,90000,105000];
T_0_vec=[288.16,216.66,216.66,282.66,282.66,165.66,165.66];
p_0_vec=[101330,22632,2488.6,120.44,58.321,1.0094,0.10444];
a_0_vec=[-0.0065,0,0.003,0,-0.0045,0,0.004];
H_G_vec=nan(1,7*N_layer);
T_vec=nan(1,7*N_layer);
p_vec=nan(1,7*N_layer);
  k=1;
for n=1:1:6
    ind_vec=(n-1)*N_layer+1:N_layer*n;
    H_G_vec(ind_vec)=linspace(h_G0_vec(n),h_G0_vec(n+1),N_layer);
    T_vec(ind_vec)=T_0_vec(n)+a_0_vec(n)*(H_G_vec(ind_vec)-h_G0_vec(n));
%     p1=p_0_vec(n)*(T_vec(ind_vec)/T_0_vec(n)).^(-g_0/a_0_vec(n)/R);
    p2=p_0_vec(n+1)* exp(-g_0*(H_G_vec(n*N_layer+1:N_layer*(1+n)) - h_G0_vec(n+1))/R/T_0_vec(n+1));
  
end
% disp(H_G_vec)
% disp(T_vec)
disp(p2)
% p_row1=p_0_vec(1)*(T_row1/T_0_vec(1)).^(-g_0/a_0_vec(1)/R);
% p_row2=p_0_vec(2)* exp(-g_0*(H_G_row2 - h_G0_vec(2))/R/T_0_vec(2));
% p_row3=p_0_vec(3)*(T_row3/T_0_vec(3)).^(-g_0/a_0_vec(3)/R);
% p_row4=p_0_vec(4)* exp(-g_0*(H_G_row4 - h_G0_vec(4))/R/T_0_vec(4));
% p_row5=p_0_vec(5)*(T_row5/T_0_vec(5)).^(-g_0/a_0_vec(5)/R);
% p_row6=p_0_vec(6)* exp(-g_0*(H_G_row6 - h_G0_vec(6))/R/T_0_vec(6));
% p_row7=p_0_vec(7)*(T_row7/T_0_vec(7)).^(-g_0/a_0_vec(7)/R);
% 
% 
% T_vec=[T_row1,T_row2,T_row3,T_row4,T_row5,T_row6,T_row7];
% p_vec=[p_row1,p_row2,p_row3,p_row4,p_row5,p_row6,p_row7];
% 
% h_vec=r*H_G_vec./(r+H_G_vec);
% a_vec=sqrt(gamma*R*T_vec);
% rho_vec=p_vec./T_vec/R;
% figure
% plot(h_vec/1e3,H_G_vec/1e3)
% xlabel('h (km)')
% ylabel('h_{G} (km)')
% 
% figure
% subplot(1,2,1)
% plot(T_vec-273,H_G_vec/1e3)
% xlabel('T {^{o}C}')
% ylabel('h_{G} (km)')
% 
% subplot(1,2,2)
% plot(a_vec/1e3*60*60,H_G_vec/1e3)
% xlabel('a (km/hr)')
% ylabel('h_{G} (km)')
% 
% figure
% subplot(1,2,1)
% plot(p_vec/1e5,H_G_vec/1e3)
% xlabel('p (bar)')
% ylabel('h_{G} (km)')
% 
% subplot(1,2,2)
% plot(rho_vec,H_G_vec/1e3)
% xlabel('\rho (kg/m^3)')
% ylabel('h_{G} (km)')


