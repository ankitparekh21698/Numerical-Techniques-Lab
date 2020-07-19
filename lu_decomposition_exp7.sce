clc()
clear
m=input("Enter the no. of variables:");
n=m;
for i=1:m
    for j=1:(m+1)
        a(i,j)=input("Enter the variable:");
    end
end
c=zeros(m,1);
for i=1:m
    c(i,1)=a(i,m+1);
    for j=1:m
        b(i,j)=a(i,j);
    end
end
disp(a);
L=zeros(m,m);
U=zeros(m,m);
for i=1:n
    for k=i:n
        sum0=0;
        for j=1:i
            sum0 = sum0 + (L(i,j)*U(i,j));
        end
        U(i,k) =b(i,k) -sum0;
    end 
    for k = i:n
        if (i == k) then
            L(i,i) = 1;
        else
            sum1=0;
            for j = 1:i;
                sum1=sum1+ (L(k,j)*U(j,i));
            end
            L(k,i) = (b(k,i) -sum1)/U(i,i);
        end
    end
end
disp(L);
disp(U);
L1=zeros(m,m+1);
U1=zeros(m,m+1);
for i=1:m
    for j=1:(m)
        L1(i,j)=L(i,j);
        U1(i,j)=L(i,j);
    end
end
for i=1:m
    L1(i,m+1)=c(i,1);
end
for i = 1:m
    L1(i,:)=L1(i,:)/L1(i,i);
    for j=1:m
        if i==j then
            continue;
        end
        L1(j,:)=L1(j,:)-L1(j,i)*L1(i,:);
    end
end
disp(L1);
for i=1:m
    U1(i,m+1)=L1(i,m+1);
end
for i=1:m
    U1(i,:)=U1(i,:)/U1(i,i);
    for j=1:m
        if i==j then
            continue;
        end;
        U1(j,:)=U1(j,:)-U1(j,i)*U1(i,:);
    end
end
disp("The result is:")
disp(U1(:,m+1));

