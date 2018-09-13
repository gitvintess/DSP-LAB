clc
clear all
close all
n=-30:30
u1=[zeros(1,30),ones(1,31)];%u(n)
u2=[zeros(1,50),ones(1,11)];%u(n-20)
z=(0.9.^n).*(u1-u2)
stem(n,z,'k')
grid on
axis([-30 30 -1 2])
title('z[n]=0.9^n(u[n]-u[n-20])')