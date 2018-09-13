clc
clear all
close all
t=0:.01:10
prompt='Enter the amplitude';
A=input(prompt);

prompt='Enter the frequency';
f=input(prompt);
prompt='Enter the phase';
ph=input(prompt);
x=A*sin(2*pi*f*t+ph);
plot(t,x)
axis([0 10 -A-2 A+2])
title('Your sinusoidal signal is')
xlabel('time')
ylabel('Amplitude')
grid on
