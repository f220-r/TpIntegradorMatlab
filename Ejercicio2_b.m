function Xp = Ejercicio2_b(t,X)
m = 200;
b = 50;
k1 = 100;
k2 = 100;

d = 10;
n = (t/d - mod(t, d)/10);
u = 15e-2; %%X(t) en metros
if (t>(2.5+10*n)) && (t<(5+10*n))||(t>(7.5+10*n)) && (t<(10+10*n))
    u=-u;
end
A = [(-k1/b) 0 (-k1);0 0 (-k2);(1/m) (1/m) 0];
B = [(k1*u) (k2*u) 0];

Xp = A * (X') + B';
Xp = Xp';