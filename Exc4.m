clear
clc

Ejercicio1 = matfile('Exc1.mat');
Ejercicio1.Properties.Writable = true;
T = Ejercicio1.T';

Y = 1e2 .* Ejercicio1.Y_a;
D = Extrapolacion_Richardson(Y,T)';
D = 1e2 .* D(2:end);

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

Y = 1e2 .* Ejercicio1.Y_b;
D = Extrapolacion_Richardson(Y,T)';
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