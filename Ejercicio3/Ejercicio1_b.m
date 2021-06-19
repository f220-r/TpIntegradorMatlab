function Xp = Ejercicio1_b(t,X)
m = 200;
b = 50;
k1 = 100;
k2 = 100;

d = 10;
r = mod(t, d)/10; 
n = (t/d - r);
u = 15e-2; %%X(t) en metros
if (t>(2.5+10*n)) && (t<(5+10*n))||(t>(7.5+10*n)) && (t<(10+10*n))
    u=-u;
end

A =   [0 1 0;0 0 1;(-(k1*k2)/(m*b)) (-(k1+k2)/m) (-k1/b)];
B = [0 0 ((k1*k2/(m*b))*u)];
Xp = A * (X') + B';
Xp = Xp';