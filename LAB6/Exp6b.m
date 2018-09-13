clc;
clear all;
close all;
x = input('Enter sequence x: ')
xodd(1)=x(1);
xodd(2)=x(3);
xeven(1)=x(2);
xeven(2)=x(4);
s1(1)=xodd(2)+xodd(1);
s1(2)=xodd(1)-xodd(2);
s1(3)=xeven(2)+xeven(1);
s1(4)=xeven(1)-xeven(2);
s1(4)=s1(4)*-j;
s1
Result (1)=s1(3)+s1(1);
Result (2)=s1(2)+s1(4);
Result (3)=s1(1)-s1(3);
Result (4)=s1(2)-s1(4);
Result