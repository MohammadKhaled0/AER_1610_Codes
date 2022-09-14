% Mohammed Khalid Gamal Ali / sec:2 / B.N:13 
% MATLAB HOMEWORK / Submitted to: Dr. Ahmed Rashed
%-----------------------------------------------------------
clc
clear
close all
w_n=3;
F0=1;
m=0.5;
zeta=0.05; %zeta=0
r=[0.2,0.9,1,1.1,2];
t_vec=[0:0.1:40];
plotHarmonicResponse(w_n,F0,m,zeta,r,t_vec);