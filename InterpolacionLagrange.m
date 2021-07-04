function [X0,L] = InterpolacionLagrange(x,X,Y)
N = length(X);
M = length(x);
L=ones(N,M);
X0=zeros(1,M);  
w=ones(1,M);
dw=ones(1,N);
for i=1:N
    w= w.*(x-X(i));
    for j=1:N
        if j~=i
            dw(i)= dw(i)*(X(i)-X(j));
        end
    end
end
for i=1:N
    L(i,:)=w./(x-X(i))/dw(i);
    X0 = X0 + Y(i)*L(i,:);
end
end