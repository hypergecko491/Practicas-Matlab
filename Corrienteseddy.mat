% Parámetros
g = 9.81;      % gravedad (m/s^2)
m = 80;        % masa de la góndola (kg)
k = 12;        % constante de arrastre (kg/s)
v0 = 0;        % velocidad inicial (m/s)
y0 = 1000;     % altura inicial (m)
tspan = [0 60];  % tiempo de simulación (s)

% Sistema de EDOs: [v; y]
% dv/dt = -g - (k/m)v
% dy/dt = v
odefun = @(t, Y) [-g - (k/m)*Y(1); Y(1)];

% Condiciones iniciales: [velocidad inicial; altura inicial]
Y0 = [v0; y0];

% Resolver con ode45
[t, Y] = ode45(odefun, tspan, Y0);

v = Y(:,1);  % velocidad
y = Y(:,2);  % altura

% Calcular aceleración en cada instante
a = -g - (k/m)*v;

% Gráficas
figure;

subplot(2,2,1);
plot(t, v, 'b', 'LineWidth', 2);
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
title('Velocidad vs Tiempo');
grid on;

subplot(2,2,2);
plot(t, a, 'r', 'LineWidth', 2);
xlabel('Tiempo (s)');
ylabel('Aceleración (m/s^2)');
title('Aceleración vs Tiempo');
grid on;

subplot(2,2,3);
plot(y, v, 'g', 'LineWidth', 2);
xlabel('Altura (m)');
ylabel('Velocidad (m/s)');
title('Velocidad vs Altura');
grid on;

subplot(2,2,4);
plot(y, a, 'm', 'LineWidth', 2);
xlabel('Altura (m)');
ylabel('Aceleración (m/s^2)');
title('Aceleración vs Altura');
grid on;
