clear
clc
Ejercicio1 = matfile('Exc1.mat');
Ejercicio1.Properties.Writable = true;
T = Ejercicio1.T';

Y = 1e2 .* Ejercicio1.Y_a;
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
string_ = {sprintf('Desvio = %.05f ',Desv),sprintf('Promedio = %.05f ',Tav)};
annotation('textbox', [.74 .74 .1 .1], 'String', string_,'FitBoxToText','on');
%%------------------------------b)

Y = 1e2 .* Ejercicio1.Y_b;
[Tav, Desv, indxs] = Ejercicio3(Y,T,.1,0);
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
string_ = {sprintf('Desvio = %.05f ',Desv),sprintf('Promedio = %.05f ',Tav)};
annotation('textbox', [.74 .3 .1 .1], 'String', string_,'FitBoxToText','on');