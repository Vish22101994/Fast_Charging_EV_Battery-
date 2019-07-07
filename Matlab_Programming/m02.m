%%function in a Script File 

x=2*pi/3;
y = myIntegrand(x)

%Comput e the are under the curve from 0 to pi,
xmin=0;
xmax=pi;
f=@myINtegrand;
a = integral(f,xmin,xmax)


