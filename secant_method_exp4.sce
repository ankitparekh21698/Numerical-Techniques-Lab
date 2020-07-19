clc()
deff('d=f(x)','d=x^7');
x=0:0.01:10;
plot(x,f(x));
a=input("Enter the lower limit approximation:");
b=input("Enter the upper limit approximation:");mod=10;
n=input("Press 0 for checking with accuracy and 1 for iterative:");
    select n
case 0 then
    while mod>0.000001
    c= b - (f(b)*(b-a))/(f(b)-f(a));
    mod=abs(c-b);
    a=b;
    b=c;
    x=c;
    plot(c,f(x),'rx','markerSize',10)
end
disp ("The root with the accuracy of 6 significant figures is :"+string(c));
case 1 then
    for i=1:100
    c=(b*f(a)-a*f(b))/(f(a)-f(b));
    a=b;
    b=c;
    x=c;
    plot(c,f(x),'rx','markerSize',10)
    disp("Iteration no.: "+string(i)+"   Root value   :"+string(c));
end
disp ("The root after 100 iterations is :"+string(c));
end

