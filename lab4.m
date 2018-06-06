% LAB 4 - Ajuste por mínimos cuadrados

x = [-1 0 1 2 3];
v = [1.2 0.9 0.5 0.2 0.1]';

% Ajuste 1: Polinómico
H1 = [ones(size(x')) x' (x').^2];
c1 = H1\v;
r1 = v - H1*c1;
E1 = norm(r1)^2;

% Ajuste 2: Exponencial
H2 = [ones(size(x')) exp(x')];
c2 = H2\v;
r2 = v - H2*c2;
E2 = norm(r2)^2;

fprintf('Coeficientes ajuste 1 (polinómico):\n'); disp(c1);
fprintf('Coeficientes ajuste 2 (exponencial):\n'); disp(c2);
fprintf('Error global E1=%.4e, E2=%.4e\n',E1,E2);

% Gráfica comparativa
xx = -1.5:0.01:4.5;
p1 = c1(1) + c1(2)*xx + c1(3)*xx.^2;
p2 = c2(1) + c2(2)*exp(xx);
figure; plot(x,v,'ko'); hold on; plot(xx,p1,'b',xx,p2,'r'); hold off;
legend('Datos','Polinómico','Exponencial');
title('Ajuste por mínimos cuadrados');

% Ecuaciones normales (polinómico)
H = H1; v = v;
c_norm = (H'*H)\(H'*v);
fprintf('Coeficientes (ecuaciones normales):\n'); disp(c_norm);
