function [A,B,E,C] = MinimosCuadrados(X,Y)
n = length(X);
N = ones(1,n)';
SumX = X*N;
SumY = Y*N;
A = ((X*(Y')) - SumX*SumY/n)/((X*(X'))-(SumX^2)/n);
B = SumY/n- A*(SumX/n);

Cov = 0;
Desx = 0;
Desy = 0;
Esum = 0;
Xmed = sum(X)/n;
Ymed = sum(Y)/n;
for i=1:n
    Cov = Cov + (X(i)-Xmed) * (Y(i)-Ymed)/n;
    Desx = Desx + (X(i)-Xmed)^2;
    Desy = Desy + (Y(i)-Ymed)^2;
    Esum = Esum +( A .* X(i) + B -Y(i))^2;
end
Desx = sqrt(Desx/n);
Desy = sqrt(Desy/n);

E = sqrt(Esum/n);
C = Cov/(Desx*Desy);