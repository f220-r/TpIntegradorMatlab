clear;
clc;

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condición inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,Y_a] = RungeKuttaOrdenN('Ejercicio2_a',t0,tF,X0,M);
Ycm_a = 1e2 .* Y_a(:,3);  % solución x(t)
subplot(2,1,1)
plot(T,Ycm_a,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid
[T,Y_b] = RungeKuttaOrdenN('Ejercicio2_b',t0,tF,X0,M);
Ycm_b = 1e2 .* Y_b(:,3);  % solución x(t)
subplot(2,1,2)
plot(T,Ycm_b,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
grid