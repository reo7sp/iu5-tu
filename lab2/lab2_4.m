k   = 5
T   = 2
T1  = 3
T2  = 1.3
ksi = 0.2

w7 =   tf([k], [T.^2      2*ksi*T      1])
w7_2 = tf([k], [(2*T).^2  2*ksi*(2*T)  1])

step(w7)
grid on
hold on
step(w7_2)
grid on