%%Calcular raices
%%Obtener media aritmetica, obtener desvio estandar

function [T_ce, D_ce]=Ejercicio3(Y,T,tol,num) %%T tiempos, Y posiciones, d tolerancia, num pos de equilibrio
N = length(Y);
T_ce = [];
j = 1;
for k=1:N
    if(abs(Y(k)-num) < tol)
        T_ce(j) = T(k);
        j = j+1;
    end
end
N = size(T_ce);
N = N(2);
T_ce_av = sum(T_ce)/N;
D_ce = sqrt((((T_ce - T_ce_av * ones(1,N)).^2)*ones(N,1))/  (N-1));
T_ce = T_ce_av;