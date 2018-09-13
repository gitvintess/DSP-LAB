clc 
clear all 
close all
n=-10:10;
u1=[zeros(1,10),ones(1,11)];%u(n)
u2=[zeros(1,14),ones(1,7)];%u(n-4)

% i)
w=u1-u2;
subplot(4,2,1)
stem(n,w,'k')
grid on
axis([-10 10 -1 2])
title('w[n]=u[n]-u[n-4]');
ylabel('w[n]');
xlabel('n');


% ii)
u3=[zeros(1,18),ones(1,3)];%u(n-8)
x=(n.*u1)-(2.*(n-4).*u2)+((n-8).*u3);
subplot(4,2,2)
stem(n,x,'k')
grid on
axis([-10 10 -1 5])
title('x[n]=n*u[n]-2(n-4)u[n-4]+(n-8)u[n-8]')
xlabel('n')
ylabel('x[n]')


% iii)
z1=[zeros(1,10),1,zeros(1,10)];
z2=[zeros(1,14),1,zeros(1,6)];
y=z1-4*z2;
subplot(4,2,3)
stem(n,y,'k')
grid on
axis([-10 10 -5 5])
title('y[n]=Impulse[n]-4*Impulse[n-4]')


% iv)
n99=-30:30
u991=[zeros(1,30),ones(1,31)];%u(n99)
u992=[zeros(1,50),ones(1,11)];%u(n99-20)
u994=[zeros(1,50),ones(1,11)];%u(n99-20)
z=(0.9.^n99).*(u991-u994);
subplot(4,2,4)
stem(n99,z)
grid on
axis([-30 30 -1 2])
title('y[n]=Impulse[n]-4*Impulse[n-4]')


% v)convolution

s1=[conv(w,w)]
n1=-20:20
subplot(4,2,5)
stem(n1,s1,'k')
grid on
axis([-20 20 -1 5])
title('y[n]=Impulse[n]-4*Impulse[n-4]')

% v)multiplication
s1m=w.*w
subplot(4,2,6)
stem(n,s1m)
title('MULTIPLICATION s1[n]=w[n]*w[n]')
grid on
ylabel('s1[n]');
xlabel('n');


% vi)convolution
s2=conv(s1,x)
n2=-30:30
subplot(4,2,7)
stem(n2,s2)
grid on
axis([-30 30 -1 50])
title('CONVOLUTION s2[n]=w[n]*w[n]*x[n]')
ylabel('s2[n]');
xlabel('n');


% vi)multiplication
subplot(4,2,8)
s2m=w.*w.*x;
stem(n,s2m,'k')
title('MULTIPLICATION s2[n]=w[n]*w[n]*x[n]')
grid on
ylabel('s2[n]');
xlabel('n');