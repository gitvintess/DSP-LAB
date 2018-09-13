clc;
clear all;
close all;
x=[1 1 1 2 1 1];
h=[1 1 2 1];
n=length(x);
l=length(h);
q=n+l-1;
x=[x zeros(1,(q-n))]
h=[h zeros(1,(q-l))]
y=zeros(1,q);
for i=1:q
    for j=1:i
        y(i)=y(i)+x(j).*h(i-j+1);
    end
end
 stem(y,'k','p');
 title('Liner Convolution using Circular Convolution');
 xlabel('n');
 ylabel('x[n]*h[n]');
axis([0 10 0 8])
grid on
