function X0 = get_poli(x,X,Y)
 N = length(X);
 M = length(x);
 X0 = zeros(1,M);
 L = ones(N,M);
 for i = 1:N
     for j=1:N
         if(i~=j)
             L(i,:) = L(i,:) .* ((x-X(j))./(X(i)-X(j)));
         end
     end
     X0 = X0 + Y(i)*L(i,:);
 end