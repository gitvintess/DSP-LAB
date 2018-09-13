clc;
clear all;
x=[1 1 1 2 1 1];
h=[1 1 2 1];
m=length(x);
p=length(h);
q=m+p-1;
x1=[x zeros(1,(q-m))];
h1=[h zeros(1,(q-p))];
b=zeros(1,q);
for i=1:q
    for j=1:i
        b(i)=b(i)+x1(j).*h1(i-j+1);
    end
end

n1=length(x);
n2=length(h);
m1=length(b);
a=max(n1,n2);
z=zeros(1,a);
y=zeros(1,a);
m2=m1-a;
for a=1:a
    z(a)=b(a);
end
s=a+1;
for b=1:m1
    y(b)=b(s);
    s=s+1;
end
for c=1:a
    z(c)=z(c)+y(c);
end

subplot(2,2,3);
stem(z);
title('Circular convolution using linear convolution');
ylabel('x[n] cconv h[n]');
xlabel('n');
