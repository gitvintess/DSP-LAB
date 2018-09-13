clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)]%u(n-4);
w=u1-u2;
stem(n,w,'k')
grid on
axis([-10 10 -1 2])
title('w[n]=u[n]-u[n-4]');
ylabel('w[n]');
xlabel('n');

