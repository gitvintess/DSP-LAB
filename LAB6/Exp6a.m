%Exp6 : 4 point DFT of the user input using:
%       (a) Divide and Conquer method
%       (b) Radix-2 DFT algorithm

clc
clear all
close all

x=input('Enter the sequence'); %enter an array of 4 elements

odd(1)=x(1);
odd(2)=x(3);
even(1)=x(2);
even(2)=x(4);
y1=fft(odd);
y2=fft(even);

z(1,1)=y1(1);
z(1,2)=y1(2);
z(2,1)=y2(1);
z(2,2)=y2(2);

w=[1 1 ;1 -1i]
x=z.*w

xodd=[x(1,1) x(2,1)];
xeven=[x(1,2) x(2,2)];
y3=fft(xodd);
y4=fft(xeven);

z2=[y3; y4]


%This experiment can be done while using all arrays or by using all
%matices. The ansers will be same. Here i've used matrices and matrix
%multiplication.