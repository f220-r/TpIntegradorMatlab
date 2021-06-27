clear
clc

t0 = 0;   % Tiempo Inicial
tF = 60;   % Tiempo Final
X0 = [0 0 0]; % Condición inicial
h = 10e-3;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,Y] = RungeKuttaOrdenN('Ejercicio1_a',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
I = Trapezoidal_Compleja(T,Y)';
string_ = sprintf('Area = %.05f',I);

subplot(2,2,1);
plot(T,Y,'g');
hold on
area(T,Y);
legend('Y(t)',string_);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('Trapezoidal A)');
grid


[T,Y] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
I = Trapezoidal_Compleja(T,Y)';
string_ = sprintf('Area = %.05f',I);

subplot(2,2,2);
plot(T,Y,'g');
hold on
area(T,Y);
legend('Y(t)',string_);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('Trapezoidal B)');
grid

[T,Y] = RungeKuttaOrdenN('Ejercicio1_a',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
I = Simpson_Compleja(T,Y)';
string_ = sprintf('Area = %.05f',I);

subplot(2,2,3);
plot(T,Y,'g');
hold on
legend(string_);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('Simpson A)');
grid

[T,Y] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
Y = 1e2 .* Y(:,1);
I = Simpson_Compleja(T,Y)';
string_ = sprintf('Area = %.05f',I);

subplot(2,2,4);
plot(T,Y,'g');
hold on
legend(string_);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('Simpson B)');
grid