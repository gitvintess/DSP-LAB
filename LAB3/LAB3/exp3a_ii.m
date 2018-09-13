clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)];%u(n-4)
u3=[zeros(1,18),ones(1,3)];%u(n-8)
x=(n.*u1)-(2.*(n-4).*u2)+((n-8).*u3)
stem(n,x,'k')
grid on
axis([-10 10 -1 5])
title('x[n]=n*u[n]-2(n-4)u[n-4]+(n-8)u[n-8]')
xlabel('n')
ylabel('x[n]')