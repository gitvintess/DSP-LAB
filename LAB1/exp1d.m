clc
clear all
close all

n=-10:1:10
x=(0.8).^n;
y=(0.8).^(-n);

even=(x+y)/2;
odd=(x-y)/2;

subplot(2,1,1);
stem(n,odd, 'k');
xlabel('n')
ylabel('(x(n)-x(-n))/2')
title('Odd part of x(n)=0.8^(n)','Interpreter','none')
subplot(2,1,2);
stem(n,even,'k');
xlabel('n')
ylabel('(x(n)+x(-n))/2')
title('Even part of x(n)=0.8^(n)','Interpreter','none')
