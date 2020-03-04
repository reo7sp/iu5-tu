function [dx]=ode(t,x)
a0=9
a1=6
a2=3
a3=3
b=12
y=sin(t) 
dx=zeros(3,1)     
dx(1)=x(2)
dx(2)=x(3)
dx(3)=(b*y-a0*x(1)-a1*x(2)-a2*x(3))/a3
end
