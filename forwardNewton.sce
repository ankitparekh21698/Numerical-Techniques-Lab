clc();
xr = 16;
x = [10;15;20]
y = [227.04; 362.78;517.35]

y21 = (y(2,1)-y(1,1));
y32 = (y(3,1)-y(2,1));
y31 = y32-y21 ;
disp(y21, y32, y31)
r = (xr-x(1,1))/5;
yr = y(1,1) +(r*y21) + (r*(r-1)*y31)/2
disp(yr); 
