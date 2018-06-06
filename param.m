function [x,y]=param(t)
x = cos(5*pi*t)./(1+t);
y = sin(4*pi*t)./(1+t.^2);
return
