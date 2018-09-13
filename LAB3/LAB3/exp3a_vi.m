clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)]%u(n-4);
w=u1-u2;



u3=[zeros(1,18),ones(1,3)];%u(n-8)
x=(n.*u1)-(2.*(n-4).*u2)+((n-8).*u3)



s1=[conv(w,w)]
s2=conv(s1,x)
n2=-30:30
stem(n2,s2,'k')
grid on
axis([-30 30 -10 50])
title('CONVOLUTION s2[n]=w[n]*w[n]*x[n]')
ylabel('s2[n]');
xlabel('n');
