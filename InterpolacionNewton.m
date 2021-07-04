function [C,D] = InterpolacionNewton(X,Y)
N = length(X);
D = zeros(N,N);
D(:,1) = Y';
for j=2:N
    for i=j:N
        D(i,j) = (D(i,j-1) - D(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
for i=1:N
    C(i) = D(i,i);
end
