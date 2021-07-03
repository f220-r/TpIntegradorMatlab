function [T,X] = RungeKuttaOrdenN(F,t0,tf,X0,M)
h = (tf-t0)/M;
T =  t0:h:tf;
X = zeros(M+1,length(X0));
X(1,:) = X0;
for k=1:M
    f1=(feval(F,T(k),X(k,:)));
    f2=(feval(F,T(k)+h/2,X(k,:)+h*f1/2));
    f3=(feval(F,T(k)+h/2,X(k,:)+h*f2/2));
    f4=(feval(F,T(k)+h,X(k,:)+h*f3));
    X(k+1,:)=X(k,:)+h*(f1+2*f2+2*f3+f4)/6;
end
T = T';