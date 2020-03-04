clc
clear

num=1;
den=[3 5 2 1];
W1=tf(num, den);
Wf1=feedback(W1,1);
W2=tf(2.3333333333, den);
Wf2=feedback (W2, 1);
W3=tf(3, den);
Wf3=feedback(W3, 1);
w=0.1:0.01:30;

APK=freqs(num,den,w);
u=real(APK);
v=imag(APK);

t=0:pi/100:2*pi;
x=sin(t);
y=cos(t);

% figure(1)
% plot(u, v, x, y)
% grid on
% axis equal

%figure(2)
%step(Wf3)
%grid on

figure(3)
bode(W3)
grid on

% figure(6)
% nyquist(W1)
% hold on
% nyquist(W2)
% hold on
% nyquist(W3)
% hold on
% grid on
