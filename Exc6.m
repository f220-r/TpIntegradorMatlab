clear
clc

Ejercicio1 = matfile('Exc1.mat');
Ejercicio1.Properties.Writable = true;
T = Ejercicio1.T';

Y = 1e2 .* Ejercicio1.Y_a;
N = length(Y);

Ts = T(1:100:N);
Ys_a = Y(1:100:N);

subplot(2,1,1);
plot(T,Y,'-r');
hold on
stem(Ts,Ys_a,'b','LineWidth',1);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
grid


Y = 1e2 .* Ejercicio1.Y_b;
Ys_b = Y(1:100:N);

subplot(2,1,2);
plot(T,Y,'-r');
hold on
stem(Ts,Ys_b,'b','LineWidth',1);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
grid