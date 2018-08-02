clc
clear all
close all
n=-10:1:10

subplot(2,2,1)
z=[zeros(1,10),1,zeros(1,10)]
stem(n,z,'k')
axis([-10 10 -2 2])
title('Unit Impulse')
xlabel('n')
ylabel('impulse')
grid on

subplot(2,2,2)
s=[zeros(1,10),ones(1,11)]
stem(n,s,'k')
axis([-10 10 -2 2])
title('Unit Step')
xlabel('n')
ylabel('step')
grid on

subplot(2,2,[3,4])
sig=[-(ones(1,10)),0,ones(1,10)]
stem(n,sig,'k')
axis([-10 10 -2 2])
title('Signum')
xlabel('n')
ylabel('signum')
grid on