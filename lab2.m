% LAB 2 - Interpolación de curva paramétrica

t = 0:0.001:1;
[x,y] = param(t);
plot(x,y,'b:');

N = 10;
tk = linspace(0,1,N);
[xk,yk] = param(tk);
px = newton(tk,xk,t);
py = newton(tk,yk,t);
figure;
plot(x,y,'b:'); hold on; plot(xk,yk,'bo'); plot(px,py,'r'); hold off;
title('Interpolación paramétrica N=10');

N = 20;
tk = linspace(0,1,N);
[xk,yk] = param(tk);
px = newton(tk,xk,t);
py = newton(tk,yk,t);
figure;
plot(x,y,'b:'); hold on; plot(xk,yk,'bo'); plot(px,py,'r'); hold off;
title('Interpolación paramétrica N=20');
