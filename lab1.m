% LAB 1 - Interpolación de funciones (Newton)
% f(x)=sin(pi*x/2) y f(x)=atan(pi*x)

xx = -1:0.01:1;
ff = fun(xx);

% Caso 1: f(x)=sin(pi*x/2)
N = 5;
xk = linspace(-1,1,N);
yk = fun(xk);
pp = newton(xk,yk,xx);

figure;
plot(xk,yk,'bo:'); hold on; plot(xx,ff,'b'); plot(xx,pp,'r'); hold off;
legend('Puntos','f(x)','p(x)');
title('Interpolación de f(x)=sin(pi*x/2)');
dif = abs(ff-pp); d = max(dif);
fprintf('la diferencia es %.1e\n',d);

% Repetir con f(x)=atan(pi*x)
ff2 = fun2(xx);
yk2 = fun2(xk);
pp2 = newton(xk,yk2,xx);

figure;
plot(xk,yk2,'bo:'); hold on; plot(xx,ff2,'b'); plot(xx,pp2,'r'); hold off;
legend('Puntos','f(x)','p(x)');
title('Interpolación de f(x)=atan(pi*x)');
dif2 = abs(ff2-pp2); d2 = max(dif2);
fprintf('la diferencia (atan) es %.1e\n',d2);
