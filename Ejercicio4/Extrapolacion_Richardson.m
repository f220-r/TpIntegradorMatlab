function Der=Extrapolacion_Richardson(Y,T)
N = length(Y);
h = (T(end)-T(1))/N;
for i=2:N-1
    Der(i) = ((Y(i+1)-Y(i-1))/(2*h));
end
