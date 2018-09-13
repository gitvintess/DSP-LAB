clc
clear all
close all
n=-10:10
z1=[zeros(1,10),1,zeros(1,10)]
z2=[zeros(1,14),1,zeros(1,6)]
y=z1-4*z2
stem(n,y,'k')
grid on
axis([-10 10 -5 5])
title('y[n]=Impulse[n]-4*Impulse[n-4]')