function I = Simpson_Compleja(T,P)
N = length(P);
h = (T(end)-T(1))/N;
I = 0;
for i=3:N
    I = I + h/6 * (P(i-2) + 4*P(i-1) + P(i));
end