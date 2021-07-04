clear
clc
Ejercicio1 = matfile('Exc1.mat');
Ejercicio1.Properties.Writable = true;
%%Ejercicio6 = matfile('Exc6.mat');
%%Ejercicio6.Properties.Writable = true;
Ejercicio7 = matfile('Exc7.mat');
Ejercicio7.Properties.Writable = true;

%%Ts = Ejercicio6.Ts;
T = Ejercicio1.T;
%%N = Ejercicio6.N;
%%--------------------------------------------------------------------------a)
%%Ys = Ejercicio6.Ys_a ;
Y_a =  Ejercicio1.Y_a .* 1e2;
Ys_int_n_a =  Ejercicio7.Ys_int_n_a;
Ys_int_l_a =  Ejercicio7.Ys_int_l_a;
Ys_int_sc_a =  Ejercicio7.Ys_int_sc_a;

%%----------------------------------------------------Newton
[A,B,E,C] = MinimosCuadrados(Y_a,Ys_int_n_a);
I = (-5:30);
Fp = A .* I + B;

figure(1)
subplot(1,2,1);
plot(I,Fp);
hold on
plot(Y_a,Ys_int_n_a,'x');
hold off
grid();
title('Correlaciones-Newton (a)');
ylabel('y (cm)');
xlabel('Ys_i_n_t (cm)');
string_ = {sprintf('Pendiente de Ajuste = %.05f ',A),sprintf('Ordenada al Origen = %.05f ',B),sprintf('Error = %.05f ',E),sprintf('Correlacion = %.05f ',C)};
annotation('textbox', [.2 .5 .3 .3], 'String', string_,'FitBoxToText','on');

%%----------------------------------------------------Lagrange
[A,B,E,C] = MinimosCuadrados(Y_a,Ys_int_l_a);
I=(-15:30);
Fp = A .* I + B;

figure(2)
subplot(1,2,1);
plot(I,Fp);
hold on
plot(Y_a,Ys_int_l_a,'x');
hold off
grid();
title('Correlaciones-Lagrange (a)');
ylabel('y (cm)');
xlabel('Ys_i_n_t (cm)');
string_ = {sprintf('Pendiente de Ajuste = %.05f ',A),sprintf('Ordenada al Origen = %.05f ',B),sprintf('Error = %.05f ',E),sprintf('Correlacion = %.05f ',C)};
annotation('textbox', [.2 .5 .3 .3], 'String', string_,'FitBoxToText','on');

%%----------------------------------------------------Spline Cubica
[A,B,E,C] = MinimosCuadrados(Y_a,Ys_int_sc_a);
I=(-15:30);
Fp = A .* I + B;

figure(3)
subplot(1,2,1);
plot(I,Fp);
hold on
plot(Y_a,Ys_int_sc_a,'x');
hold off
grid();
title('Correlaciones-Spline Cubica (a)');
ylabel('y (cm)');
xlabel('Ys_i_n_t (cm)');
string_ = {sprintf('Pendiente de Ajuste = %.05f ',A),sprintf('Ordenada al Origen = %.05f ',B),sprintf('Error = %.05f ',E),sprintf('Correlacion = %.05f ',C)};
annotation('textbox', [.2 .5 .3 .3], 'String', string_,'FitBoxToText','on');
%%--------------------------------------------------------------------------b)
%%Ys = Ejercicio6.Ys_a ;
Y_b =  Ejercicio1.Y_b .* 1e2;
Ys_int_n_b =  Ejercicio7.Ys_int_n_b;
Ys_int_l_b =  Ejercicio7.Ys_int_l_b;
Ys_int_sc_b =  Ejercicio7.Ys_int_sc_b;

%%----------------------------------------------------Newton
[A,B,E,C] = MinimosCuadrados(Y_b,Ys_int_n_b);
I = (-30:40);
Fp = A .* I + B;

figure(1)
subplot(1,2,2);
plot(I,Fp);
hold on
plot(Y_b,Ys_int_n_b,'x');
hold off
grid();
title('Correlaciones-Newton (b)');
ylabel('y (cm)');
xlabel('Ys_i_n_t (cm)');
string_ = {sprintf('Pendiente de Ajuste = %.05f ',A),sprintf('Ordenada al Origen = %.05f ',B),sprintf('Error = %.05f ',E),sprintf('Correlacion = %.05f ',C)};
annotation('textbox', [.74 .56 .1 .1], 'String', string_,'FitBoxToText','on');

%%----------------------------------------------------Lagrange
[A,B,E,C] = MinimosCuadrados(Y_b,Ys_int_l_b);
I = (-40:30);
Fp = A .* I + B;

figure(2)
subplot(1,2,2);
plot(I,Fp);
hold on
plot(Y_b,Ys_int_l_b,'x');
hold off
grid();
title('Correlaciones-Lagrange (b)');
ylabel('y (cm)');
xlabel('Ys_i_n_t (cm)');
string_ = {sprintf('Pendiente de Ajuste = %.05f ',A),sprintf('Ordenada al Origen = %.05f ',B),sprintf('Error = %.05f ',E),sprintf('Correlacion = %.05f ',C)};
annotation('textbox', [.74 .56 .1 .1], 'String', string_,'FitBoxToText','on');

%%----------------------------------------------------Spline Cubica
[A,B,E,C] = MinimosCuadrados(Y_b,Ys_int_sc_b);
I = (-30:30);
Fp = A .* I + B;
figure(3)
subplot(1,2,2);
plot(I,Fp);
hold on
plot(Y_b,Ys_int_sc_b,'x');
hold off
grid();
title('Correlaciones-Spline Cubica (b)');
ylabel('y (cm)');
xlabel('Ys_i_n_t (cm)');
string_ = {sprintf('Pendiente de Ajuste = %.05f ',A),sprintf('Ordenada al Origen = %.05f ',B),sprintf('Error = %.05f ',E),sprintf('Correlacion = %.05f ',C)};
annotation('textbox', [.74 .3 .1 .1], 'String', string_,'FitBoxToText','on');