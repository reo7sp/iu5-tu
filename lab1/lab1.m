[t,x]=ode45('ode',[0 10],[1 0.5 0])
plot(t,x(:,1),'b-',t,x(:,2),'g-',t,sin(t),'r-','LineWidth',2) 
legend('x_1(t)', 'x_2(t)', 'x_3(t)')
grid on
xlabel('t, c')
ylabel('x_i(t)')
title('Реакция системы на входной сигнал y=sin(t) при начальных условиях [1 0.5 0]')
