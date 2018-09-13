clc;
clear all;
close all;

n=-10:1:10;
x=[zeros(1,10),1,zeros(1,10)];
subplot(2,1,1)
stem(n,x,'k')
xlabel('n')
ylabel('x(n)')
title('impulse(n)')


y=[zeros(1,14),1,zeros(1,6)];
subplot(2,1,2)
stem(n,y,'k')
xlabel('n')
ylabel('y(n)')
title('impulse(n-4)')
