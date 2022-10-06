clc
L=2
x=-L:0.01:L;
f=x^2+2*x; //define function f(x)
a0=(1/(2*L)*inttrap(x,f)); //define fourier constant
for n=1:50
f1=f.*cos(%pi*n*x*(1/L));
a(n)=(1/L)* inttrap(x,f1); //define fourier constant
end;
for n=1:50
f2=f.*sin(%pi*n*x*(1/L));
b(n)=(1/L)* inttrap(x,f2); //define fourier constant
end;
subplot(2,1,1), plot(x,f);
u=0; y=0;
for n=1:50
u= a(n)*cos(%pi*n*x*(1/L))+ b(n)* sin(%pi*n*x*(1/L));
y=y+u;
end;
fs=y+ a0;
subplot(2,1,2), plot(x,fs);
title('Fourier series for the function x^2+2x if n=50','fontsize',5)
