%%1. Realice un algoritmo en MatLab, con el M�todo de Bisecci�n, que aproxime la
%%soluci�n de la ecuaci�n f (x) = 0 en el intervalo [a,b]. Proceda con el m�todo
%%solamente si la funci�n f (x) es continua y f (a) y f (b) tienen signos opuestos. El
%%algoritmo debe recibir como par�metros de entrada la funci�n f (x) (al igual que en
%%algoritmos desarrollados previamente), el intervalo [a,b] y la tolerancia para el cero
%%obtenido, es decir, el intervalo de bisecci�n m�nimo para dar por finalizado el
%%algoritmo. Los par�metros de salida deben ser la ra�z calculada

function R=MetodoBiseccion(Y,T,d)
n = 1;
Edge = [1 length(Y)];
k = (Edge(2)+Edge(1))/2;
C0 = [];
C0(1,1) = T(round(k));
while(abs(C0(1,n)) > d)
    if ((Y(Edge(1))*Y(k)) < 0)
        Edge(2) = k; 
    elseif ((Y(k)* Y(Edge(2))) < 0)
        Edge(1) = k;
    elseif ((Y(Edge(1))*Y(Edge(2))) == 0)
        if(Y(Edge(1)) == 0)
            C0 = T(Edge(1));
        else
            C0 = T(Edge(2));
        end
    end
    k = (Edge(2)+Edge(1))/2;
    C0(1,n+1) = T(k);
    n = n+1;
end
disp(C0);
R = C0;