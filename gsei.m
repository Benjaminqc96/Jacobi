function sol=gsei(A,b,error,n)
D=zeros(n);
L=zeros(n);
U=zeros(n);
x=zeros(1,n);
tol=1;
for i=1:n
    D(i,i)=A(i,i);
end
for j=1:n-1
    for k=j+1:n
        U(j,k)=A(j,k);
    end
end
for j=2:n
    for k=1:n-1
        L(j,k)=A(j,k);
    end
end
R=A-D;
while (tol>error)
 k=k+1;
    x1=inv(D)*(b-R*x);
    tol=abs(x1-x)/n;
    x=x1;
    if k==30
        break;
    end
end
end