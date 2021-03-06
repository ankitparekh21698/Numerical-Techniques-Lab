clf;
subplot(2,4,1);
t=0:4;
y=ones(1,5);
plot2d3(t,y,5);
xlabel("time");
ylabel("amplitude");
xtitle("UNIT STEP FUNCTION");
subplot(2,4,2);
t=0:4;
y=t;
plot2d3(t,y,5);
xlabel("time");
ylabel("amplitude");
xtitle("UNIT RAMP FUNCTION");
subplot(2,4,3);
t=0:4;
y=exp(t);
plot2d3(t,y,5);
xlabel("time");
ylabel("amplitude");
xtitle("EXPONENTIAL FUNCTION");
subplot(2,4,4);
t=0:4;
y=t^2;
plot2d3(t,y,5);
xlabel("time");
ylabel("amplitude");
xtitle("UNIT PARABOLIC FUNCTION");
subplot(2,4,5);
t=[-5:0.5:5];
y=sin(t);
plot2d3(t,y,5);
xlabel("time");
ylabel("amplitude");
xtitle("SINE FUNCTION");
subplot(2,4,6);
t=[-5:0.5:5];
y=cos(t);
plot2d3(t,y,5);
xlabel("time");
ylabel("amplitude");
xtitle("COSINE FUNCTION");
subplot(2,4,7);
plot2d3(0,1,5);
xlabel("time");
ylabel("amplitude");
xtitle("UNIT IMPULSE FUNCTION");
subplot(2,4,8);
t=[-5:0.5:5]
y=sinc(t);
plot2d3(t,y,5);
xlabel("time");
ylabel("amplitude");
xtitle("SINC FUNCTION");
