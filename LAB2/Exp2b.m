clc
clear all
close all
n=0:.001:.1

subplot(3,2,2)
s=square(2*pi*50*n,25)
stem(n,s,'k')
title('Discrete with 25% duty cycle')
xlabel('n')
ylabel('x')
axis([0 .1 -2 2])
grid on

subplot(3,2,4)
s=square(2*pi*50*n,50)
stem(n,s,'k')
axis([0 .1 -2 2])
title('Discrete with 50% duty cycle')
grid on
xlabel('n')
ylabel('x')

subplot(3,2,6)
s=square(2*pi*50*n,75)
stem(n,s,'k')
xlabel('n')
ylabel('x')
title('Discrete with 75% duty cycle')
grid on
axis([0 .1 -2 2])

subplot(3,2,1)
s=square(2*pi*50*n,25)
plot(n,s,'k')
xlabel('n')
ylabel('x')
title('Continuous with 25% duty cycle')
grid on
axis([0 .1 -2 2])

subplot(3,2,3)
s=square(2*pi*50*n,50)
plot(n,s,'k')
xlabel('n')
ylabel('x')
title('Continuous with 50% duty cycle')
grid on
axis([0 .1 -2 2])

subplot(3,2,5)
s=square(2*pi*50*n,75)
plot(n,s,'k')
xlabel('n')
ylabel('x')
title('Continuous with 75% duty cycle')
grid on
axis([0 .1 -2 2])
