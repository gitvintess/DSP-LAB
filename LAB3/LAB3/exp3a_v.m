clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)]%u(n-4);
w=u1-u2;

s1=[conv(w,w)]
n1=-20:20
stem(n1,s1,'k')
grid on
axis([-20 20 -1 5])
title('CONVOLUTION s1[n]=w[n]*w[n]')

ylabel('s1[n]');
xlabel('n');
