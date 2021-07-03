function Xp = Ejercicio1_a(t,X)
m = 200;
b = 50;
k1 = 100;
k2 = 100;
u = 15e-2; %%X(t) en metros

A =   [0 1 0;0 0 1;(-(k1*k2)/(m*b)) (-(k1+k2)/m) (-k1/b)];
B = [0 0 1]';
Xp = A * (X') + B.*u;
Xp = Xp';