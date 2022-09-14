% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
function x_vec=SDOF_Forced_Response_Visc(w_n,zeta,F0_by_m,r,t_vec)
if zeta==0 && r==1
    x_vec=-F0_by_m/2/w_n*t_vec.*cos(w_n*t_vec);
else
   omega=r*w_n;
   w_d=w_n*sqrt(1-zeta^2);
   x_vec=(F0_by_m/w_n^2/((1-r^2)^2+(2*zeta*r)^2))*(-2*zeta*r*cos(omega*t_vec)+(1-r^2)*sin(omega*t_vec)+r*exp(-zeta*w_n*t_vec).*(2*zeta*cos(w_d*t_vec)+(w_n*(2*zeta^2-1+r^2)*sin(w_d*t_vec))/w_d));
end
end