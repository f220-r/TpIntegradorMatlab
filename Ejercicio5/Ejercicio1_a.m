function Xp = Ejercicio1_a(t,X)
m = 200;
b = 50;
k1 = 100;
k2 = 100;

u = 15e-2; %%X(t) en metros
if t<0
    u=0;
end

A =   [0 1 0;0 0 1;(-(k1*k2)/(m*b)) (-(k1+k2)/m) (-k1/b)];
B = [0 0 ((k1*k2/(m*b))*u)];
Xp = A * (X') + B';
Xp = Xp';