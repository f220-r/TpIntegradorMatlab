clear
clc

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condici�n inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de soluci�n

[T,Y] = RungeKuttaOrdenN('Ejercicio1_a',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
[Tav, Desv] = Ejercicio3(Y,T,0.1,15);

subplot(2,1,1);
plot(T,Y,'g');
hold on
t_t = (Tav * ones(length(Y),1));
plot(t_t,Y,'--b');
t_t = ones(length(Y),1) * (Tav + Desv);
plot(t_t,Y,'--r');
t_t = ones(length(Y),1) * (Tav - Desv);
plot(t_t,Y,'--r');
hold off
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid

%%------------------------------b)

[T,Y] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
[Tav, Desv] = Ejercicio3(Y,T,.9,0);
subplot(2,1,2);
plot(T,Y,'g');
hold on
t_t = (Tav * ones(length(Y),1));
plot(t_t,Y,'--b');
t_t = ones(length(Y),1) * (Tav + Desv);
plot(t_t,Y,'--r');
hold off
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
grid