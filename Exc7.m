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
Ys = Ejercicio6.Ys_a ;
Y =  Ejercicio1.Y_a .* 1e2;
%%----------------------------------------------------Newton
[C,D] = InterpolacionNewton(Ts,Ys);
Ys_int_n_a = evalMiPoli(C,T',Ts);

figure(1);
subplot(3,1,1);
plot(T,Y,'--b');
hold on
plot(Ts,Ys,'x b');
plot(T, Ys_int_n_a, 'c');
hold off
ylim([-10 30])
legend('Funcion original','Funcion muestreada','Funcion interpolada');
grid();
title('Interpolacion de Newton _ a)');
%%----------------------------------------------------Lagrange
Ys_int_l_a = InterpolacionLagrange(T',Ts,Ys);

figure(1);
subplot(3,1,2);
plot(T,Y,'--b');
hold on
plot(Ts,Ys,'x b');
plot(T, Ys_int_l_a, 'c');
hold off
ylim([-10 30])
legend('Funcion original','Funcion muestreada','Funcion interpolada');
grid();
title('Interpolacion de Lagrange _ a)');
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
title('Splines Cubicas _ a)');
%%--------------------------------------------------------------------------b)
Ys = Ejercicio6.Ys_b;
Y = 1e2 .* Ejercicio1.Y_b;
%%----------------------------------------------------Newton
[C,D] = InterpolacionNewton(Ts,Ys);
Ys_int_n_b = evalMiPoli(C,T',Ts);

figure(2);
subplot(3,1,1);
plot(T,Y,'--b');
hold on
plot(Ts,Ys,'x b');
plot(T, Ys_int_n_b, 'c');
hold off
ylim([-40 40])
legend('Funcion original','Funcion muestreada','Funcion interpolada');
grid();
title('Interpolacion de Newton _ b)');
%%----------------------------------------------------Lagrange
Ys_int_l_b = InterpolacionLagrange(T',Ts,Ys);

figure(2);
subplot(3,1,2);
plot(T,Y,'--b');
hold on
plot(Ts,Ys,'x b');
plot(T, Ys_int_l_b, 'c');
hold off
ylim([-40 40])
legend('Funcion original','Funcion muestreada','Funcion interpolada');
grid();
title('Interpolacion de Lagrange _ b)');
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
title('Splines Cubicas _ b)');