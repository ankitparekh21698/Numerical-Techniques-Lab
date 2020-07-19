clf;
subplot(2,4,1);
x=[0:0.1:2*%pi];
y=sin(x);
plot(x,y);
xtitle("SINE FUNCTION")
xlabel("t");
ylabel("sin(t)");
subplot(2,4,2);
x=[0:0.1:2*%pi];
y=x*0 + 1;
plot(x,y);
xtitle("UNIT STEP FUNCTION")
xlabel("t");
ylabel("u(t)");
subplot(2,4,3);
x=[0:0.1:2*%pi];
y=x;
plot(x,y);
xtitle("UNIT RAMP FUNCTION")
xlabel("t");
ylabel("r(t)");
subplot(2,4,4);
x=[0:0.1:2*%pi];
y=x^2;
plot(x,y);
xtitle("UNIT PARABOLIC FUNCTION")
xlabel("t");
ylabel("h(t)");
subplot(2,4,5);
x=[-10:0.1:10];
y=sinc(x);
plot(x,y);
xtitle("SINC FUNCTION")
xlabel("t");
ylabel("sinc(t)");
subplot(2,4,6);
plot2d3(0,1);
xtitle("UNIT IMPULSE FUNCTION")
xlabel("t");
ylabel("delta(t)");
subplot(2,4,7);
x=[0:0.1:3];
y=exp(x);
plot(x,y);
xtitle("EXPONENTIAL FUNCTION")
xlabel("t");
ylabel("exp(t)");
subplot(2,4,8);
x=[0:0.1:2*%pi];
y=cos(x);
plot(x,y);
xtitle("COSINE FUNCTION")
xlabel("t");
ylabel("cos(t)");

