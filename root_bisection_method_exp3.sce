clc()
deff('d=f(x)','d=x^7');
deff('d=f1(x)','d=numderivative(f, x)');
deff('d=f2(x)','d=numderivative(f1, x)');
x=0:0.01:10;
plot(x,f(x));
a=input("Enter first initial approximation:");
b=input("Enter second initial approximation:");mod=10;
n=input("Press 0 for checking with accuracy and 1 for iterative:");
if (f(x0)*f2(x0))/((f1(x0))^2) <=1 then
    select n
case 0 then
    while mod>0.000001
    c=(b*)
    mod=abs(x1-x2);
    x0=x1;
    x1=x2;
    x=x1;
    plot(x1,f(x),'rx','markerSize',10)
end
disp ("The root with the accuracy of 6 significant figures is :"+string(x1));
case 1 then
    for i=1:100
    x1=x0-(f(x0)/f1(x0));
    x2=x1-((f(x1)*(x1-x0))/(f(x1)-f(x0)));
    x0=x1;
    x=x0;
    plot(x0,f(x),'rx','markerSize',10)
    disp("Iteration no.: "+string(i)+"   Root value   :"+string(x0));
end
disp ("The root after 100 iterations is :"+string(x0));
end
else
    disp ("ERRROR : INIIAL GUESS WRONG")
end
