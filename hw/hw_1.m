clc
clear

s = tf('s')
w1 = tf([1000], [1])
w2 = 1/s
w3 = 0.01*s + 1
w4 = 1/(0.1*s + 1)
w5 = 1/(0.5*s + 1)
w = w1*w2*w3*w4*w5

figure(1)
bode(w1)
grid on

figure(2)
bode(w2)
grid on

figure(3)
bode(w3)
grid on

figure(4)
bode(w4)
grid on

figure(5)
bode(w5)
grid on

figure(6)
bode(w)
grid on

