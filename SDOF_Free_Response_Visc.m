% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB HOMEWORK / Submitted to: Dr. Ahmed Rashed
function x_vec=SDOF_Free_Response_Visc(w_n,zeta,x0,v0,t_vec)
if zeta==0
    A=sqrt(x0^2 + (v0/w_n)^2);
    theta=atan2(x0*w_n,v0);
    x_vec=A*sin(w_n*t_vec+theta);
elseif (0<zeta) && (zeta<1)
    B=sqrt(x0^2*w_n^2+2*zeta*w_n*x0*v0+v0^2)/w_n/ sqrt(1-zeta^2);
    w_d=w_n*sqrt(1-zeta^2);
    phi=atan2(x0*w_d,(zeta*w_n*x0+v0));
  x_vec=  B * exp(-zeta * w_n*t_vec).* sin(w_d*t_vec+phi);
elseif zeta==1
    x_vec=exp(-w_n*t_vec).*(x0+(w_n*x0+v0)*t_vec);
elseif zeta>1
    C=((sqrt(zeta^2-1)-zeta)*w_n*x0-v0)/2/w_n/sqrt(zeta^2-1);
    D=((sqrt(zeta^2-1)+zeta)*w_n*x0+v0)/2/w_n/sqrt(zeta^2-1);
    x_vec=exp(-zeta*w_n*t_vec).*(C*exp(-w_n*sqrt(zeta^2-1)*t_vec)+ D*exp(w_n*sqrt(zeta^2-1)*t_vec));
end
end