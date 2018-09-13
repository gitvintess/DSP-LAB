clc
clear all
close all
n=-10:1:10
step=[zeros(1,10), ones(1,11)];
x=[((0.5).^(n)).*step];
stem(n,x,'k','p');
title('Discrete time signal');
xlabel('Time');
ylabel('x[n]');
y=x.*x;
sum(y)
