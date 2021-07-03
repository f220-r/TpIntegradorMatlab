function [indxs,R]=MetodoUbicacionRaicesReales(F,T,tol,num)
M = length(F);
deltaX = T(2)-T(1);
R = [];
n = 1;
for i = 2:M-1
    D1 = (F(i+1)-F(i))/deltaX;
    D2 = (F(i)-F(i-1))/deltaX;
    if(F(i)*F(i-1) <= 0 && (abs(F(i)-num)<tol))
        R(n,1) = T(i);
        indxs(n) = i;
        n=n+1;
    elseif (((D1*D2)<=0)  && (abs(F(i)-num)<tol))
        R(n,1) = T(i);
        indxs(n) = i;
        n = n+1;
    elseif (abs(F(i)-num)<tol)
        R(n,1) = T(i);
        indxs(n) = i;
        n = n+1;
    end
end