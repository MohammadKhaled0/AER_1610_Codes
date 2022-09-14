% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
function [h_vec,T_vec,p_vec,rho_vec,a_vec]=isa_prop(h_G_vec)
%this function returns nan in T_vec and p_vec for h_G_vec values higher
%than 105e3
% ---------------------givens------------------------
R=287.04;
g_0=9.80665;
r= 6.356766e6;
gamma=1.4;
h_G0_vec=[0,11000,25000,47000,53000,79000,90000,105000];
T_0_vec=[288.16,216.66,216.66,282.66,282.66,165.66,165.66];
p_0_vec=[101330,22632,2488.6,120.44,58.321,1.0094,0.10444];
a_0_vec=[-0.0065,0.003,-0.0045,0.004];

%------------------calculations---------------------
h_vec=r*h_G_vec./(r+h_G_vec);
T_vec=nan(size(h_G_vec));
p_vec=nan(size(h_G_vec));

for n=1:length(h_G_vec)
      if h_G_vec(n)<=h_G0_vec(2)
        T_vec(n)=T_0_vec(1)+a_0_vec(1)*(h_G_vec(n)-h_G0_vec(1));
p_vec(n)=p_0_vec(1)*(T_vec(n)/T_0_vec(1))^(-g_0/a_0_vec(1)/R);
    elseif h_G_vec(n)<=h_G0_vec(3)
        T_vec(n)=T_0_vec(2);
      p_vec(n)=p_0_vec(2)*exp(-g_0*(h_G_vec(n)-h_G0_vec(2))/T_0_vec(2)/R); 
    elseif  h_G_vec(n)<=h_G0_vec(4)
                T_vec(n)=T_0_vec(3)+a_0_vec(2)*(h_G_vec(n)-h_G0_vec(3));
p_vec(n)=p_0_vec(3)*(T_vec(n)/T_0_vec(3))^(-g_0/a_0_vec(2)/R);
    elseif h_G_vec(n)<=h_G0_vec(5)
          T_vec(n)=T_0_vec(4);
      p_vec(n)=p_0_vec(4)*exp(-g_0*(h_G_vec(n)-h_G0_vec(4))/T_0_vec(4)/R); 
    elseif  h_G_vec(n)<=h_G0_vec(6)
               T_vec(n)=T_0_vec(5)+a_0_vec(3)*(h_G_vec(n)-h_G0_vec(5));
p_vec(n)=p_0_vec(5)*(T_vec(n)/T_0_vec(5))^(-g_0/a_0_vec(3)/R);
    elseif h_G_vec(n)<=h_G0_vec(7)
          T_vec(n)=T_0_vec(6);
      p_vec(n)=p_0_vec(6)*exp(-g_0*(h_G_vec(n)-h_G0_vec(6))/T_0_vec(6)/R); 
    elseif  h_G_vec(n)<=h_G0_vec(8)
               T_vec(n)=T_0_vec(7)+a_0_vec(4)*(h_G_vec(n)-h_G0_vec(7));
p_vec(n)=p_0_vec(7)*(T_vec(n)/T_0_vec(7))^(-g_0/a_0_vec(4)/R);

     end
    
end
     
a_vec=sqrt(gamma*R*T_vec);
rho_vec=p_vec./T_vec/R;  
        
        
        
        
        