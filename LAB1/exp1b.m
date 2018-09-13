clc
clear all
n=-10:1:10;
x=exp(j*pi*n/6);
subplot(3,2,1)
stem(n,x,'k')
title('Discrete Signal')
R=real(x);
Im=imag(x);
Ab=abs(x);
Angle=angle(x);

subplot(3,2,2)
stem(n,R,'k')
title('Real')

subplot(3,2,3)
stem(n,Im, 'k')
title('Imaginary')

subplot(3,2,4)
stem(n,Ab,'k')
title('Absolute')

subplot(3,2,5)
stem(n,Angle,'k')
title('Angle-Radian')

AngleD=Angle*pi/360;
subplot(3,2,6)
stem(n,AngleD,'k')
title('Angle-Degree')
