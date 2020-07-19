clc()
n=input("Enter the no. of terms:");
for a=1:n
    M(a)=input("Enter value of x"+string(a)+"  :");
end
for b=1:n
    N(b)=input("Enter value of y"+string(b)+"  :");
end
X=input("Enter the value of X  ");
Ans=0;
p=1;
q=1;
for j=1:n
for i=1:n 
    if i==j then 
        q=q*1;
        p=p*1;
     else
       q=q*(M(j)-M(i));
       p=p*(X-M(i));
    end
end
Ans=Ans+(N(j)*p/q);
p=1
q=1
end
disp("The value of corresponding Y for the given X is :");
disp(Ans);
