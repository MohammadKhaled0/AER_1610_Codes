% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
h_G_vec=linspace(0,105000,10000);
tic
[h_vec,T_vec,p_vec,rho_vec,a_vec]=isa_prop(h_G_vec);
toc
tic
[h_vec1,T_vec1,p_vec1,rho_vec1,a_vec1]=isa_prop_improved(h_G_vec);
toc

if max(abs(h_vec-h_vec1))>100*eps,error('h_vec values are not identical.'),end
if max(abs(T_vec-T_vec1))>100*eps,error('T_vec values are not identical.'),end
% if max(abs(p_vec-p_vec1))>100*eps,error('p_vec values are not identical.'),end
if max(abs(rho_vec-rho_vec1))>100*eps,error('rho_vec values are not identical.'),end
if max(abs(a_vec-a_vec1))>100*eps,error('a_vec values are not identical.'),end

figure
plot(h_vec/1e3,h_G_vec/1e3)
xlabel('$h$ (km)', 'interpreter', 'latex')
ylabel('$h_G$ (km)', 'interpreter', 'latex')

figure
subplot(1,2,1)
plot(T_vec-273,h_G_vec/1e3)
xlabel('$T$ (\r{ }C)', 'interpreter', 'latex')
ylabel('$h_G$ (km)', 'interpreter', 'latex')

subplot(1,2,2)
plot(a_vec/1e3*60*60,h_G_vec/1e3)
xlabel('$a$ (km/h)', 'interpreter', 'latex')
ylabel('$h_G$ (km)', 'interpreter', 'latex')

figure
subplot(1,2,1)
plot(p_vec/1e5,h_G_vec/1e3)
xlabel('$p$ (bar)', 'interpreter', 'latex')
ylabel('$h_G$ (km)', 'interpreter', 'latex')

subplot(1,2,2)
plot(rho_vec,h_G_vec/1e3)
xlabel('$\rho$ (kg/m\textsuperscript{2})', 'interpreter', 'latex')
ylabel('$h_G$ (km)', 'interpreter', 'latex')