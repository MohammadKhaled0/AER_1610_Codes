% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
function x=falsePosition(f,x_b,x_a)
f_a=f(x_a);
f_b=f(x_b);
if (f_a*f_b>0);err('the values of x_a & x_b should be located on different sides');end
conv_perc=100*eps;
max_n=500;n=1;
while (abs(x_a- x_b)>conv_perc) && (n<=max_n)
    x=(x_a*f_b-x_b*f_a)/(f_b-f_a);
       if (abs(f(x))<conv_perc)
           break
       elseif f(x)*f_b>0
           x_b=x;
       else
           x_a=x;
       end
    n=n+1;
end
if (n>max_n); err('false position method failed to find the root');end

end