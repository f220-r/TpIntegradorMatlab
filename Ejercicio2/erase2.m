t = 0:10e-3:60;
x=[];
d = 10;
for k=1:length(t)
    n = (t(k)/d - mod(t(k), d)/10);
    u = 15; %%X(t) en metros
    if (t(k)>(2.5+10*n)) && (t(k)<(5+10*n))||(t(k)>(7.5+10*n)) && (t(k)<(10+10*n))
        u=-u;
    end
    x(k)=u;
end

figure(3)
plot(t,x);