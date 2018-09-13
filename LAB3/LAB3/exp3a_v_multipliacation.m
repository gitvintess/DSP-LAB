clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)]%u(n-4);
w=u1-u2;

s1=w.*w
stem(n,s1,'k')
axis([-10 10 -1 2])
title('MULTIPLICATION s1[n]=w[n]*w[n]')
grid on
ylabel('s1[n]');
xlabel('n');
