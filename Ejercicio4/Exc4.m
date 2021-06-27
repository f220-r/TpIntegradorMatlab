clear
clc

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condición inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,Y] = RungeKuttaOrdenN('Ejercicio1_a',t0,tF,X0,M);
D = Extrapolacion_Richardson(Y,T)';
D = 1e2 .* D(2:end);
Y = 1e2 .* Y(:,1);
subplot(2,2,1);
plot(T,Y,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid

subplot(2,2,2);
t = T(2:end-1);
plot(t,D);
ylabel('v (cm/s)');
xlabel('t (s)');
title('A)');
grid

[T,Y] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
D = Extrapolacion_Richardson(Y,T)';
Y = 1e2 .* Y(:,1);
D = 1e2 .* D(2:end);

subplot(2,2,3);
plot(T,Y,'g');
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid

subplot(2,2,4);
t = T(2:end-1);
plot(t,D);
ylabel('v (cm/s)');
xlabel('t (s)');
title('A)');
grid