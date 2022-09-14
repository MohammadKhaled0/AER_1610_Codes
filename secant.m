% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
function x=secant(f,x_0,x_1)

x_nm2=x_0;
x_nm1=x_1;

conv_perc=100*eps;
max_n=500;n=1;

while (abs(x_nm2- x_nm1)>conv_perc) && (n<=max_n)
    x_n=(x_nm2*f(x_nm1)-x_nm1*f(x_nm2))/(f(x_nm1)-f(x_nm2));
    if (abs(f(x_n))<conv_perc);break;end
    x_nm2=x_nm1;
    x_nm1= x_n;
   n=n+1;
end
if (n>max_n); err('secant method failed to find the root');end
x=x_n;
end