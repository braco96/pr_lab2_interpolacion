% LAB 3 - Interpolación del contorno de la mano

figure; [xk, yk] = ginput;
save puntos xk yk;

N = length(xk);
tk = linspace(0,1,N);
t = 0:0.001:1;

% Interpolación polinómica
px = newton(tk,xk,t);
py = newton(tk,yk,t);
figure; plot(xk,yk,'bo'); hold on; plot(px,py,'r'); hold off;
title('Interpolación polinómica del contorno de la mano');

% Interpolación con splines lineales
figure; plot(xk,yk,'ro',xk,yk,'b');
title('Interpolación lineal (splines lineales)');

% Interpolación con splines cúbicos
px2 = spline(tk,xk,t);
py2 = spline(tk,yk,t);
figure; plot(px2,py2,'r'); hold on; plot(xk,yk,'bo'); hold off;
title('Interpolación con splines cúbicos');
