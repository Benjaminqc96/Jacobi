function sol=jacob(A,b,error,n)
C=zeros(1,n);
cont=0;
control=1;
while control>error
    cont=cont+1;
    for i=1:n
        xi=0;
        for j=1:n
            if i~=j
                xi=xi+A(i,j)*C(j);
        C(i)=(b(i)-xi)/A(i,i);      
            end
         end
    end
    control=norm(C-0);
    sol=C;
if cont==30
    break
end
end
end
