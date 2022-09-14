clc
clear var
close all
h_G_vec=linspace(0,105000,10000);
tic
[h_vec,T_vec,p_vec,rho_vec,a_vec]=isa_prop(h_G_vec);
toc
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