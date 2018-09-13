clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)]%u(n-4);
w=u1-u2;
%stem(n,w,'k')
grid on
axis([-10 10 -1 2])
title('w[n]=u[n]-u[n-4]');
ylabel('w[n]');
xlabel('n');


u3=[zeros(1,18),ones(1,3)];%u(n-8)
x=(n.*u1)-(2.*(n-4).*u2)+((n-8).*u3)
%stem(n,x,'k')
grid on
axis([-10 10 -1 5])
title('x[n]=n*u[n]-2(n-4)u[n-4]+(n-8)u[n-8]')
xlabel('n')
ylabel('x[n]')



s2=w.*w.*x;
stem(n,s2)
