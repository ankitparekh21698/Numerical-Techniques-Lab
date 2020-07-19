clc();
xr = input("enter the value of xr = ");
x = [10 15 20]
y = [227.04 362.78 517.35]
disp(y(1,2))
y21 = (y(1,2)-y(1,1));
y32 = (y(1,3)-y(1,2));
y31 = y32-y21 ;
disp("First Difference D1 = ")
disp(y21)
disp("First Difference D2 = ")
disp(y32)
disp("Second Difference D1 = ")
disp(y31)
r = (xr-x(1,3))/(x(1,2) - x(1,1)); //considering equally spaced
yr = y(1,3) +(r*y32) + (r*(r+1)*y31)/2
disp("The final value for the desired input is = ");
disp(yr); 
