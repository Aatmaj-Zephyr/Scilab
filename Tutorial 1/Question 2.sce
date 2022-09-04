clear; clc;
t=0:0.01:7; // function is defined in this range//
f=(t+1).*(t+1);
a=1; //variable chosen to define the loop for sigma //
for sigma=-0.5:0.01:0.5, //range for sigma is required to plot the graph, // rp=f.*exp(-sigma*t); //real part of integrand
irp(a)=inttrap(t,rp); //command to find integration of real part of
magnitude (a)=abs(irp(a)); //evaluation of integral including real 
a=a+1; end;
sigma=-0.5:0.01:0.5;
plot2d(sigma,magnitude) // plot3d is to be used to plot 3 variables title('Q2','fontsize',5)
