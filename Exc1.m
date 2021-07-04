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
Yo_a = 15 .* ones(1,length(T));
subplot(2,1,1)
plot(T,Ycm_a,'g');
hold on
plot(T,Yo_a,'r');
hold off
ylabel('y (cm)');
xlabel('t (s)');
title('A)');
legend('Y(t)','X(t)');
grid

%%----------------------------------------------------------------------Ejercicio B)

[T,Y_b] = RungeKuttaOrdenN('Ejercicio1_b',t0,tF,X0,M);
Y_b = C * Y_b';
Ycm_b = 1e2 .* Y_b;  % solución x(t)




Yo_b = [];
for i=1:length(T)
    d = 10;
    r = mod(T(i), d)/10; 
    n = (T(i)/d - r);
    u = 15e-2; %%X(t) en metros
    if (T(i)>(2.5+10*n)) && (T(i)<(5+10*n))||(T(i)>(7.5+10*n)) && (T(i)<(10+10*n))
        u=-u;
    end
    Yo_b(i) = u .* 1e2;
end

subplot(2,1,2)
plot(T,Ycm_b,'g');
hold on
plot(T,Yo_b,'r');
hold off
ylabel('y (cm)');
xlabel('t (s)');
title('B)');
legend('Y(t)','X(t)');
grid