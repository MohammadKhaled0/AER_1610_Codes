% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB HOMEWORK / Submitted to: Dr. Ahmed Rashed
%-----------------------------------------------------------
clc, clear, close all
% ---------------------givens------------------------
R=287.04;
g_0=9.80665;
r= 6.356766e6;
gamma=1.4;
N_layer=50;
%----------------------------
h_G0_vec=[0,11000,25000,47000,53000,79000,90000,105000];
T_0_vec=[288.16,216.66,216.66,282.66,282.66,165.66,165.66];
p_0_vec=[101330,22632,2488.6,120.44,58.321,1.0094,0.10444];
a_0_vec=[-0.0065,0.003,-0.0045,0.004];
%---------------------------
h_G_vec=nan(1,7*N_layer);
T_vec=nan(1,7*N_layer);
p_vec=nan(1,7*N_layer);
%------------------calculations---------------------

for n=1:1:7
     ind_vec=(n-1)*N_layer+1:N_layer*n;
     h_G_vec(ind_vec)=linspace(h_G0_vec(n),h_G0_vec(n+1),N_layer);
    if rem(n,2)~=0
        ind_a=(n+1)/2;
       T_vec(ind_vec)=T_0_vec(n)+a_0_vec(ind_a)*(h_G_vec(ind_vec)-h_G0_vec(n));
       p_vec(ind_vec)=p_0_vec(n)*(T_vec(ind_vec)/T_0_vec(n)).^(-g_0/a_0_vec(ind_a)/R);
    else
       T_vec(ind_vec)=T_0_vec(n)*ones(1,N_layer);
       p_vec(ind_vec)=p_0_vec(n)* exp(-g_0*(h_G_vec(ind_vec)- h_G0_vec(n))/R/T_0_vec(n));
    end
end
%---------------------------
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


