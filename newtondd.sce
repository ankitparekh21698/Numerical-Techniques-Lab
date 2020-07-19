clc()
n=input("Enter the no. of terms:");
for a=1:n
    M(a)=input("Enter value of x"+string(a)+"  :");
end
for b=1:n
    N(b)=input("Enter value of y"+string(b)+"  :");
end
X=input("Enter the value of X  ");
for o=1:n
    for p=1:n
        DD(o,p)=0;
    end
end
p=1;
for k=1:n
    DD(1,k)=N(k);
end
for j=2:n
     for i = 1:n+1-j
     DD(j,i)=(DD(j-1,i+1)-DD(j-1,i))/(M(i+j-1)-M(i));
     end
end
disp("The Divided differences Table is");
disp(DD);
Ans=DD(1,1);
p=X-M(1);
for q=2:n
    Ans=Ans+(p*DD(q,1));
    p=p*(X-M(q));
end
disp("The value of corresponding Y for the given X is :");
disp(Ans);
