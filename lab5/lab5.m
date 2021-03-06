clc                 % (�������� �����)
clear               % (������� �������� ����������)

K=0.00001                 % (������������ �����������) 
T0=1                % (�� ��������, ���� �����)
T1=0.5                % (�� ��������)
T2=5                % (���������� � ��������� �� 0.5 �� 5)

%W1=tf([1],[1 0])    % (��� �������������� �����)
%W2=tf([1],[T 1])    % (��� ��������������� �����)
%W3=tf([1],[T1*T1 T2 1])   % (��� �������������� �����)

s=tf('s')
W=K/(s*(T1*s+1)*(T2*s+1))              % (��� ����������� �������)

Wf=feedback(W,1)          % (��� ��������� �������)

[num,den]=tfdata(Wf,'v')  % (��������� � ����������� ��)
omega=0.1:0.01:10         % (�������� � ��� ������)
G=freqs(den,1,omega)      % (������ ���������)
u=real(G)                 % (������������ ����� ���������)
v=imag(G)                 % (������ ����� ���������)

% ����� k_����
if true
    [u_s, u_idx] = sort(u)
    v_s = v(u_idx)
    
    for i = 2:length(u_s)
        if v_s(i-1) < 0 && v_s(i) >= 0
            x1 = u_s(i-1)
            x2 = u_s(i)
            y1 = v_s(i-1)
            y2 = v_s(i)
            if y2 == 0
                disp('K_crit = ')
                disp(x2)
                %return
            end
            disp('K_crit = ')
            disp( x1 + ( ((x2-x1)/(y2-y1)) * (0-y1) ) )
        end
    end
    
    return
end

figure(1)                 % (������ �������� � 1-� ����)
plot(u,v,0,0,'r*') %(������ ���������, � �.(0,0) ������� *)
grid on                   % (������������ �����)
figure(2)                 % (������ �������� � 2-� ����)
step(Wf)                  % (���������� �������)  
grid on                   % (������������ �����)     
figure(3)                 % (������ �������� � 3-� ����)
bode(Wf)                  % (���)  
grid on                   % (������������ �����)     
