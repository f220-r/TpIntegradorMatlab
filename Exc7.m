clear
clc
Ejercicio1 = matfile('Exc1.mat');
Ejercicio1.Properties.Writable = true;
Ejercicio6 = matfile('Exc6.mat');
Ejercicio6.Properties.Writable = true;
Ts = Ejercicio6.Ts;
T = Ejercicio1.T;
N = Ejercicio6.N;
%%--------------------------------------------------------------------------a)
Ys = Ejercicio6.Ys_a;
Y = 1e2 .* Ejercicio1.Y_a;
%%----------------------------------------------------Newton

%%----------------------------------------------------Lagrange

%%----------------------------------------------------Spline Cubica
C = SplineCubica(Ts,Ys);
Ys_int_sc_a = [];
n = 1;
for i=1:length(T)
    if ((T(i) >= Ts(n))&&(T(i) <= Ts(n+1)))
        Ys_int_sc_a(i) = C(n,:) * ([(T(i)-Ts(n))^3 (T(i)-Ts(n))^2 (T(i)-Ts(n)) 1]');
    elseif (T(i)< T(end))
        n = n+1;
        Ys_int_sc_a(i) = C(n,:) * ([(T(i)-Ts(n))^3 (T(i)-Ts(n))^2 (T(i)-Ts(n)) 1]');
    end
end

figure(1);
subplot(3,1,3);
plot(T,Y,'--b');
hold on
plot(Ts,Ys,'x b');
plot(T, Ys_int_sc_a, 'c');
hold off
legend('Funcion original','Funcion muestreada','Funcion interpolada');
grid();

%%--------------------------------------------------------------------------b)
Ys = Ejercicio6.Ys_b;
Y = 1e2 .* Ejercicio1.Y_b;
%%----------------------------------------------------Newton

%%----------------------------------------------------Lagrange
%%----------------------------------------------------Spline Cubica
C = SplineCubica(Ts,Ys);
Ys_int_sc_b = [];
n = 1;
for i=1:length(T)
    if ((T(i) >= Ts(n))&&(T(i) <= Ts(n+1)))
        Ys_int_sc_b(i) = C(n,:) * ([(T(i)-Ts(n))^3 (T(i)-Ts(n))^2 (T(i)-Ts(n)) 1]');
    elseif (T(i)< T(end))
        n = n+1;
        Ys_int_sc_b(i) = C(n,:) * ([(T(i)-Ts(n))^3 (T(i)-Ts(n))^2 (T(i)-Ts(n)) 1]');
    end
end

figure(2)
subplot(3,1,3);
plot(T,Y,'--b');
hold on
plot(Ts,Ys,'x b');
plot(T, Ys_int_sc_b, 'c');
hold off
legend('Funcion original','Funcion muestreada','Funcion interpolada');
grid();