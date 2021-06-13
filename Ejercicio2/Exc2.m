clear;
clc;

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condici�n inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de soluci�n

[T,Y] = RungeKuttaOrdenN('Ejercicio2_a',t0,tF,X0,M);

t= T;    % vector de tiempo
y_t = 1e2 .* Y(:,3);  % soluci�n x(t)
figure(2);
subplot(2,1,1)
plot(t,y_t,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid

[T,Y] = RungeKuttaOrdenN('Ejercicio2_b',t0,tF,X0,M);

t= T;    % vector de tiempo
y_t = 1e2 .* Y(:,3);  % soluci�n x(t)
figure(2);
subplot(2,1,2)
plot(t,y_t,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
grid