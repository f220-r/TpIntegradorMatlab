%%Calcular raices
%%Obtener media aritmetica, obtener desvio estandar

function [T_ce, D_ce,indxs]=Ejercicio3(Y,T,tol,num) %%T tiempos, Y posiciones, d tolerancia, num pos de equilibrio
N = length(Y);
[indxs,T_ce] = MetodoUbicacionRaicesReales(Y,T,tol,num);
N = size(T_ce);
N = N(1);
T_ce=T_ce(2:N)-T_ce(1:N-1)
N = N-1;
T_ce_av = sum(T_ce)/N;
D_ce = sqrt((ones(1,N)*((T_ce - T_ce_av * ones(N,1)).^2))/  (N-1));
T_ce = T_ce_av;