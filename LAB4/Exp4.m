clc
clear all
x = input('Enter sequence x: ')
N = length(x)
X = zeros(1,N)
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1) * exp((-j*2*pi*k*n)/N)
    end
end
m = 0:N-1
subplot(2,2,1)
stem(m,x,'k')
grid on
xlabel('n')
title('Input sequence')
ylabel('x');
t = abs(X)
subplot(2,2,2)
stem(m,t,'k')
grid on
xlabel('n')
ylabel('abs(X)')
title('Magnitude spectrum of DFT sequence')
ph = angle(X)
subplot(2,2,3)
stem(m,ph,'k')
grid on
xlabel('n')
ylabel('angle(X)')
title('Phase spectrum of DFT')
x1 = zeros(1,N)
for n = 0:N-1
    for k = 0:N-1
        x1(n+1) = x1(n+1) + X(k+1)*exp((j*2*pi*k*n)/N)
    end
end
x1 = x1/N
subplot(2,2,4)
stem(m,x1,'k')
xlabel('n')
title('IDFT')
grid on
ylabel('IDFT')
