% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
clc
clearvars
fn_handle=@(x) (x^2-x-8); %Handle of the function to be solved
% false position method
x_b=3; %point before the root
x_a=4; %point after the root
tic
x=falsePosition(fn_handle,x_b,x_a);
toc
fn_handle(x)
