k=5.58;
T1=0.1;
T2=0.02;
 
w1=tf([k], [T1*T2 (T1+T2) 1 0]);

sisotool(w1);

k2=1
w2=tf([T1 k2], [1])

w2r=tf([0.12 1], [0.02 1])

w3=tf([1], [1])      % �
w4=tf([1], [T1 0])   % �
w5=tf([1], [1]) + tf([1], [1 0])    % ��
w6=tf([1], [1]) + tf([1], [1 0]) + tf([T1 0], [1])    % ���