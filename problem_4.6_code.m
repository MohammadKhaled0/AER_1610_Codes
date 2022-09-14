clc,clear,close all
%------------------------
% problem 4.6
a=1;
b=5;
A_row=[3 9 5];
B_row=[2 1 5];
% (a)
% %a*b*A_row*B_row
% % --{Error using * Inner matrix dimensions must agree.}--
% (b)
r4=a.*b.*A_row.*B_row
size(r4)
% (c)
r5=a*b*A_row.*B_row
size(r5)
% (d)
% %o6=a.*b.*A_row*B_row
% % --{Error using * Inner matrix dimensions must agree.}--
% (e)
% %o7=[A_row A_row A_row]*[B_row B_row B_row]
% % --{Error using * Inner matrix dimensions must agree.}--
% (f)
r8=[A_row A_row A_row].*[B_row B_row B_row]
size(r8)
% (g)
% % o9=[A_row,A_row,A_row]*[B_row,B_row,B_row]   
% % --{Error using * Inner matrix dimensions must agree.}--
% (h)
r10=[A_row,A_row,A_row].*[B_row,B_row,B_row]
size(r10)
% (i)
r11=[A_row;A_row;A_row]*[B_row;B_row;B_row]
size(r11)
% (j)
r12=[A_row;A_row;A_row].*[B_row;B_row;B_row]
size(r12)

