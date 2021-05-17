clear
clc
%Domain
x=0.01:0.01:2;
%Mean and variance
m=[0.338 0.503 0.901 1.086];
v=[0.01 0.013 0.047 0.073];
%mu and sigma parameters
u=log(m.^2./sqrt(v+m.^2));
s=sqrt(log(v./m.^2+1));
%Plotting
figure
hold on
plot(x,logncdf(x,u(1),s(1)))
plot(x,logncdf(x,u(2),s(2)))
plot(x,logncdf(x,u(3),s(3)))
plot(x,logncdf(x,u(4),s(4)))