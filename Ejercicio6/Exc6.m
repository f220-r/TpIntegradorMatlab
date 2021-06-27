clear
clc

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condición inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,Y] = RungeKuttaOrdenN('Ejercicio1_a',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);

N = length(Y);
Ts = T(1:100:N);
Ys = Y(1:100:N);
subplot(2,1,1);
plot(T,Y);
hold on
stem(Ts,Ys,'b','LineWidth',1);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid

[T,Y] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);

N = length(Y);
Ts = T(1:100:N);
Ys = Y(1:100:N);
subplot(2,1,2);
plot(T,Y);
hold on
stem(Ts,Ys,'b','LineWidth',1);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
grid