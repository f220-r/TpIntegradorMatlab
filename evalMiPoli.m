function X0=evalMiPoli(C,x,X)  % Lagrange interpolation
n = length(C);
X0 = 0;
for i =1:n
    p = 1;
    if i ~= 1
        for j=1:i-1
            p = p .* (x - X(j));
        end
    end
    X0 = X0 + C(i).* p;
end
