clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)]%u(n-4);
w=u1-u2;


u3=[zeros(1,18),ones(1,3)];%u(n-8)
x=(n.*u1)-(2.*(n-4).*u2)+((n-8).*u3)




s2=w.*w.*x;
stem(n,s2,'k')
title('MULTIPLICATION s2[n]=w[n]*w[n]*x[n]')
grid on
ylabel('s2[n]');
xlabel('n');
axis([-10 10 -2 5])