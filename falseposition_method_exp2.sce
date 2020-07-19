deff('d=f(x)','d=(x^3)-x-2');
a=input("Please Enter lower Limit");
b=input("Please Enter Upper Limit");
n=input("Please Enter No. of Iterations");
disp("Checking upto 3 significant digits")
c=(b*f(a)-a*f(b))/(f(a)-f(b));
x=a:0.01:b;
y=f(x);
plot(x,y);
disp("Iteration  :  a  :  b  :  c  :  f(c)  ")
for i=1:n
    disp(string(i)+"  :  "+string(a)+"  :  "+string(b)+"  :  "+string(c)+"  :  "+string(f(c)));
    if f(a)*f(c)<0 then b=c;
    end
    if f(a)*f(c)>0 then a=c;
    end
    cnext=(b*f(a)-a*f(b))/(f(a)-f(b));
    plot(c,0,'rx','MarkerSize',10)
    if abs(cnext-c)<0.0001 then break;
    end
    c=cnext;
end

