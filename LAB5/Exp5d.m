clc;
clear all;
x=[1 1 1 2 1 1];
h=[1 1 2 1];
m=length(x);
p=length(h);
q=m+p-1;
x1=[x zeros(1,(q-m))];
h1=[h zeros(1,(q-p))];
z1=fft(x1);
z2=fft(h1);
z3=z1.*z2;
z4=ifft(z3);
grid on
stem(z4,'k','p');
grid on
title('Circular convolution using DFT IDFT method');
ylabel('x[n] cconv h[n]');
xlabel('n');
