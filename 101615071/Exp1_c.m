clc
clear all
n=-100:1:100
x=impulse(n)
y=impulse(n-4)


subplot(2,1,1)
stem(n,x)

subplot(2,1,2)
stem(n,y)