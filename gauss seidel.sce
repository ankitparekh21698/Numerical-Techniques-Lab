clc()
a =[0,0,0;0,0,0;0,0,0];
for i=1:3
    for j=1:3
        a(i,j) = input("Enter the  (" +string(i)+" , "+string(j) +" ) element:");
        end
end
disp("Entered matrix is :");
for i=1:3
    disp("" + string(a(i,1)) + "     " + string(a(i,2)) + "     " + string(a(i,3))+"     ")
end
b =[0;0;0]
disp("Enter the column matrix:");
for i=1:3
    b(i,1) = input("Enter the (" + string(i)+" , 1 ) element:");
end
disp("The maximum relative error is 0.001")
ex=1;ey=1;ez=1;x=0;y=0;z=0;
    while(ex>0.001||ey>0.001||ez>0.001)
        p=x;m=y;n=z;
        x=(b(1,1)-(z*a(1,3))-(y*a(1,2)))/(a(1,1));
        y=(b(2,1)-(z*a(2,3))-(x*a(2,1)))/(a(2,2));
        z=(b(3,1)-(x*a(3,1))-(y*a(3,2)))/(a(3,3));
        ex=abs((p-x));
        ey=abs((m-y));
        ez=abs((n-z));
    end
 disp("The value of x is")   
 disp(x)
 disp("The value of y is") 
 disp(y)
 disp("The value of z is") 
 disp(z)
