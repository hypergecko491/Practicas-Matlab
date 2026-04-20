% Definir las funciones
syms x;
f1 = 3*x^4 - 4*x^3 - 2*x^2 + 5;
f2 = 2*x^3 + 3*x^2 - 36*x;

% Calcular la primera y segunda derivada de f1
f1_primera = diff(f1, x);
f1_segunda = diff(f1_primera, x);

% Calcular la primera y segunda derivada de f2
f2_primera = diff(f2, x);
f2_segunda = diff(f2_primera, x);

% Crear un vector de valores de x para graficar
x_vals = linspace(-10, 10, 1000);

% Evaluar las funciones y sus derivadas para f1
f1_vals = double(subs(f1, x, x_vals));
f1_primera_vals = double(subs(f1_primera, x, x_vals));
f1_segunda_vals = double(subs(f1_segunda, x, x_vals));

% Evaluar las funciones y sus derivadas para f2
f2_vals = double(subs(f2, x, x_vals));
f2_primera_vals = double(subs(f2_primera, x, x_vals));
f2_segunda_vals = double(subs(f2_segunda, x, x_vals));

% Graficar la primera función y sus derivadas
figure;
subplot(2, 1, 1);
plot(x_vals, f1_vals, 'b', 'DisplayName', 'f1(x)');
hold on;
plot(x_vals, f1_primera_vals, 'r--', 'DisplayName', 'f1''(x)');
plot(x_vals, f1_segunda_vals, 'g-.', 'DisplayName', 'f1''''(x)');
title('Función f1(x), primera y segunda derivada');
legend show;
grid on;

% Graficar la segunda función y sus derivadas
subplot(2, 1, 2);
plot(x_vals, f2_vals, 'b', 'DisplayName', 'f2(x)');
hold on;
plot(x_vals, f2_primera_vals, 'r--', 'DisplayName', 'f2''(x)');
plot(x_vals, f2_segunda_vals, 'g-.', 'DisplayName', 'f2''''(x)');
title('Función f2(x), primera y segunda derivada');
legend show;
grid on;

% Localizar máximos, mínimos y puntos de inflexión para f1 y f2
% Puntos críticos (donde la primera derivada es cero)
f1_puntos_criticos = solve(f1_primera == 0, x);
f2_puntos_criticos = solve(f2_primera == 0, x);

% Puntos de inflexión (donde la segunda derivada es cero)
f1_puntos_inflexion = solve(f1_segunda == 0, x);
f2_puntos_inflexion = solve(f2_segunda == 0, x);

% Mostrar resultados
disp('Puntos críticos de f1:');
disp(double(f1_puntos_criticos));
disp('Puntos de inflexión de f1:');
disp(double(f1_puntos_inflexion));

disp('Puntos críticos de f2:');
disp(double(f2_puntos_criticos));
disp('Puntos de inflexión de f2:');
disp(double(f2_puntos_inflexion));
