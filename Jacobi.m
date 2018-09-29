clear 
close all
clc
n=input('Ingrese el numero de ecuaciones: ');
A=zeros(n);
for i=1:n
    for j=1:n
        fprintf('Ingrese el coeficiente %d,%d ',i,j)
        A(i,j)=input('');
    end
end
for i=1:n
    fprintf('ingrese la solucion %d: ',i)
    b(i)=input('');
end
error=1e-6;
sol=jacob(A,b,error,n);
%sol1=gsei(A,b,error,n);