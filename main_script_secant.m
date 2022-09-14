% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB hOMEWORK / Submitted to: Dr. Ahmed Rashed
%-------------------------------------------------
clc
clearvars
fn_handle=@(x) (x - 1.9202 - .3617*sin((pi*x)/180)); %Handle of the function to be solved
% Secant Method
x_0=0; %1st intial guess
x_1=10; %2nd intial guess
tic
x=secant(fn_handle,x_0,x_1)
toc
fn_handle(x)