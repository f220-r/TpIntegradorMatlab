clear
clc

Ejercicio1 = matfile('Exc1.mat');
Ejercicio1.Properties.Writable = true;
T = Ejercicio1.T';

Y = 1e2 .* Ejercicio1.Y_a;
I = Trapezoidal_Compleja(T,Y)';
string_ = sprintf('Area = %.05f cm2',I);

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

I = Simpson_Compleja(T,Y)';
string_ = sprintf('Area = %.05f cm2',I);

subplot(2,2,3);
plot(T,Y,'g');
hold on
legend(string_);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('Simpson A)');
grid

Y = 1e2 .* Ejercicio1.Y_b;
I = Trapezoidal_Compleja(T,Y)';
string_ = sprintf('Area = %.05f cm2',I);

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

I = Simpson_Compleja(T,Y)';
string_ = sprintf('Area = %.05f cm2',I);

subplot(2,2,4);
plot(T,Y,'g');
hold on
legend(string_);
hold off;
ylabel('y (cm)');
xlabel('t (s)');
title('Simpson B)');
grid