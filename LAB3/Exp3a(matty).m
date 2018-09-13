clc;
clear all;
close all;
n=-30:1:30;
n1=-60:1:60;
n2=-90:1:90;
u1=[zeros(1,30),ones(1,31)];
u2=[zeros(1,34),ones(1,27)];
u3=[zeros(1,38),ones(1,23)];
u4=[zeros(1,50),ones(1,11)];
i1=[zeros(1,30),ones(1,1),zeros(1,30)];
i2=[zeros(1,34),ones(1,1),zeros(1,26)];
w=u1-u2;
x=(n.*u1)-(2.*(n-4).*u2)+((n-8).*u3);
y=i1-4*i2;
z=((0.9).^(n)).*((u1-u4));
subplot(4,2,1)
stem(n,w)
title('w[n]= u[n]-u[n-4]')
xlabel('n')
ylabel('w[n]');
subplot(4,2,2)
stem(n,x)
title('x[n]= (n.*u[n])-(2.*(n-4).*u[n-4])+((n-8).*u[n-8])')
xlabel('n')
ylabel('x[n]')
subplot(4,2,3)
stem(n,y)
title('y[n]= impulse[n]-impulse[n-4]')
xlabel('n')
ylabel('y[n]');
subplot(4,2,4)
stem(n,z)
title('z[n]= ((0.9)^(n)).*((u[n]-u[n-20]))')
xlabel('n')
ylabel('z[n]');
s11=w.*w;
s22=w.*w.*x;
subplot(4,2,5)
stem(n,s11)
title('MULTIPLICATION - s1[n]= w[n]*w[n]')
xlabel('n')
ylabel('s1[n]');
subplot(4,2,6)
stem(n,s22)
title('MULTIPLICATION - s2[n]= w[n]*w[n]*x[n]')
xlabel('n')
ylabel('s2[n]');
s1=conv(w,w)
subplot(4,2,7)
stem(n1,s1)
title('CONVOLUTION - s1[n]= w[n]*w[n]')
xlabel('n')
ylabel('s1[n]');
s2=conv(s1,x)
subplot(4,2,8)
stem(n2,s2)
title('CONVOLUTION - s2[n]= w[n]*w[n]*x[n]')
xlabel('n')
ylabel('s2[n]');
