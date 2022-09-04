clear; clc;
t=0:0.01:5; // function is defined in this range//
f=t.*sin(t).*sin(t);
b=1; //variable chosen to define the loop for omega //
for omega =-0.5:0.01:0.5,
rp=f.*cos(omega*t); //real part of integrand e^(-st) f(t)=e^(-(σ+j ω)t) f(t)//
irp(b)=inttrap(t,rp); //command to find integration of real part of integrand using trapezoidal rule// ip=f.*sin(omega*t); //imaginary part of integrand//
iip(b)=inttrap (t,ip); //command to find integration of imaginary part of integrand using trapezoidal rule// magnitude (b)=abs(irp(b)+%i*iip(b)); //evaluation of integral including real and imaginary part//
b=b+1; end;
omega=-0.5:0.01:0.5;
plot2d(omega,magnitude) // plot3d is to be used to plot 3 variables
title('Q3','fontsize',5)
