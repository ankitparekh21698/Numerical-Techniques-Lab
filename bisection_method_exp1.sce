a=input("Please Enter lower Limit");
b=input("Please Enter Upper Limit");
accuracy=input("Please Enter Accuracy");
accuracytemp=b-a;
iteration=0;
x=a:0.01:b;
y=f(x);
plot(x,y);
while accuracytemp>accuracy
    iteration=iteration+1;
    c=(a+b)/2;
    f1=(a^3)-(a)-2;
    f2=(b^3)-(b)-2;
    f3=(c^3)-(c)-2;
    disp("Itr.no.:"+string(iteration)+"||"+"a ="+ string(a)+"||"+"b ="+string(b)+"||"+"c ="+ string(c)+"||"+"f(c) ="+ string(f3));
    plot(c,0,'rx','MarkerSize',10)
    if f1*f3<0 then b=c;
    end
    if f1*f3>0 then a=c;
    end
    if (b-a)<0 then accuracytemp=(a-b);
    end
    if (b-a)>0 then accuracytemp=(b-a);
    end
end
