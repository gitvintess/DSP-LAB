clc;
clear all;
x=[2 7 -4 11 5];
h=[3 2 6 -5 12]
n=length(x);
p=length(h);
q=n+p-1;
x=[ x zeros(1, (q-n))];
h=[ x zeros(1, (q-p))];
y=zeros(1,q);
for i=1:q
    for j=1:i
          y(i) = y(i)+x(j).*h(i-j+1);
    end
end
stem(y);
title('Circular Convolution');
ylabel('x[n]*h[n]');
xlabel('n');
