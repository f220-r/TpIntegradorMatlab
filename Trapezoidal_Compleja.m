function I = Trapezoidal_Compleja(T,P)
N = length(P);
h = (T(end)-T(1))/N;
I = h/2 * (P(1)+P(end)) + h.* (ones(1,N-2)* P(2:N-1)');