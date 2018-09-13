clc
clear all
n=-10:1:10
c=1
for(i=n)
if(i<=5&i>=-5) 
    x(:,c)=4.*i
    c=c+1
else
    x(:,c)=0;
    c=c+1
end
end
stem(n,x,'k','p')
title('Discrete signal')
xlabel('n')
ylabel('4*n')