clear; clc;
t=0:0.01:10; // function is defined in this range// f=exp(-2*t).*sin(t).*cos(t);
a=1; //variable chosen to define the loop for sigma //
for sigma=-0.5:0.01:0.5, //range for sigma is required to plot the graph, // b=1; //variable chosen to define the loop for omega //
for omega =-0.5:0.01:0.5,
rp=f.*exp(-sigma*t).*cos(omega*t); //real part of integrand irp(a,b)=inttrap(t,rp); //command to find integration of real part of
ip=f.*exp(-sigma*t).*sin(omega*t); //imaginary part of integrand// iip(a,b)=inttrap (t,ip); //command to find integration of imaginary part of
magnitude (a,b)=abs(irp(a,b)+%i*iip(a,b)); //evaluation of integral including real and
b=b+1; end;
a=a+1; end;
sigma=-0.5:0.01:0.5;
omega=-0.5:0.01:0.5;
plot3d(sigma,omega,magnitude) // plot3d is to be used to plot 3 variables title('Q1','fontsize',5)
