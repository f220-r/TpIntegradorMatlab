clear
clc

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condición inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,Y] = RungeKuttaOrdenN('Ejercicio1_a',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
[Tav, Desv, indxs] = Ejercicio3(Y,T,.04,15);
subplot(2,1,1);
plot(T,Y,'g');
hold on
plot([T(indxs(1)) T(indxs(2))],[Y(indxs(1)) Y(indxs(2))], ' x');
t_t = ((Tav+T(indxs(1))) * ones(length(Y),1));
plot(t_t,Y,'--b');
t_t = ones(length(Y),1) * ((Tav+T(indxs(1))) + Desv);
plot(t_t,Y,'--r');
t_t = ones(length(Y),1) * ((Tav+T(indxs(1))) - Desv);
plot(t_t,Y,'--r');
plot(T(indxs),Y(indxs), ' x');
hold off
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid

%%------------------------------b)

[T,Y] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
[Tav, Desv, indxs] = Ejercicio3(Y,T,.05,0);
subplot(2,1,2);
plot(T,Y,'g');
hold on
plot([T(indxs(1)) T(indxs(2))],[Y(indxs(1)) Y(indxs(2))], ' x');
t_t = ((Tav+T(indxs(1))) * ones(length(Y),1));
plot(t_t,Y,'--b');
t_t = ones(length(Y),1) * ((Tav+T(indxs(1))) + Desv);
plot(t_t,Y,'--r');
t_t = ones(length(Y),1) * ((Tav+T(indxs(1))) - Desv);
plot(t_t,Y,'--r');
plot(T(indxs),Y(indxs), ' x');
hold off
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
grid
