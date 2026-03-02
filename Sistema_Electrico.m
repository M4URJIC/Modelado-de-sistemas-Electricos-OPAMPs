
T = [0, 20];

X0 = [0, 2];
[t, x] = ode45(@(t,s) Electrico(t, s), T, X0);

figure
plot(t, x(:,1), 'LineWidth', 0.5)
grid on
legend('Voltaje')
xlabel('Tiempo (s)')
ylabel('Valores')
title('Graficas')

% figure
% plot(out.ScopeData.time, out.ScopeData.signals(1).values, 'y-', 'LineWidth', 1)
% hold on
% plot(out.ScopeData.time, out.ScopeData.signals(2).values, 'c-', 'LineWidth', 1)
% grid on
% legend('x1(t)', 'x3(t)')
% xlabel('Tiempo (s)')
% ylabel('Valores')
% title('Graficas ScopeData')