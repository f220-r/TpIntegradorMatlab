clear;
clc;

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condición inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

m = 200;
b = 50;
k1 = 100;
k2 = 100;
C = [(k1*k2/(m*b)) ((k1+k2)/m) 0];

[T,Y_a] = RungeKuttaOrdenN('Ejercicio1_a',t0,tF,X0,M);
Y_a = C * Y_a';
Ycm_a = 1e2 .* Y_a;  % solución x(t)

subplot(2,1,1)
plot(T,Ycm_a,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid

%%----------------------------------------------------------------------Ejercicio B)

[T,Y_b] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
Y_b = C * Y_b';
Ycm_b = 1e2 .* Y_b;  % solución x(t)

subplot(2,1,2)
plot(T,Ycm_b,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
grid