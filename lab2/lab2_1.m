k   = 5
T   = 2
T1  = 3
T2  = 1.3
ksi = 0.2

w1 = tf([k],     [1     0])
w2 = tf([k],     [1     T       0])
w3 = tf([k*T 1], [1     0])
w4 = tf([k 0],   [T     1])
w5 = tf([k],     [T     1])
w6 = tf([k],     [T2.^2 T       1])
w7 = tf([k],     [T.^2  2*ksi*T 1])
w8 = tf([k],     [T.^2  0       1])

show_zveno_graphs('интегрирующее звено', 1, w1)
show_zveno_graphs('интегрирующее с запаздыванием звено', 2, w2)
show_zveno_graphs('изодромное звено', 3, w3)
show_zveno_graphs('реального дифференцирующее звено', 4, w4)
show_zveno_graphs('апериодического первого порядка звено', 5, w5)
show_zveno_graphs('апериодического второго порядка звено', 6, w6)
show_zveno_graphs('колебательное звено', 7, w7)
show_zveno_graphs('консервативное звено', 8, w8)

function show_zveno_graphs(name, index, func)
    figure(index)
    set(gcf, 'Position', [0 0 800 1200])

    suptitle(name)

    subplot(3,1,1)
    step(func)
    grid on

    subplot(3,1,2)
    impulse(func)
    grid on

    subplot(3,1,3)
    bode(func)
    grid on
end
