clc; clear; close all;

% Ejercicio 1: f(x,y) = cos(sqrt(x^2 + y^2))
[x, y] = meshgrid(-10:0.2:10, -10:0.2:10);
z = cos(sqrt(x.^2 + y.^2));
figure;
surf(x, y, z);
title('Ejercicio 1: f(x,y) = cos(sqrt(x^2 + y^2))');
xlabel('X');
ylabel('Y');
zlabel('f(X,Y)');
colormap jet;
shading interp;

% Ejercicio 2: f(x,y) = ln(x^2 + y^2)
[x, y] = meshgrid(-10:0.2:10, -10:0.2:10);
z = log(x.^2 + y.^2);
figure;
surf(x, y, z);
title('Ejercicio 2: f(x,y) = ln(x^2 + y^2)');
xlabel('X');
ylabel('Y');
zlabel('f(X,Y)');
colormap parula;
shading interp;

% Ejercicio 3: f(x,y) = cos(xy)
[x, y] = meshgrid(-2:0.2:2, -2:0.2:2);
z = cos(x .* y);
figure;
surf(x, y, z);
title('Ejercicio 3: f(x,y) = cos(xy)');
xlabel('X');
ylabel('Y');
zlabel('f(X,Y)');
colormap hot;
shading interp;

% Ejercicio 4: f(x,y) = abs(xy)
[x, y] = meshgrid(-2:0.2:2, -2:0.2:2);
z = abs(x .* y);
figure;
surf(x, y, z);
title('Ejercicio 4: f(x,y) = abs(xy)');
xlabel('X');
ylabel('Y');
zlabel('f(X,Y)');
colormap cool;
shading interp;

% Ejercicio 5: f(x,y) = sqrt(x^2 + y^2)
[x, y] = meshgrid(-2:0.2:2, -2:0.2:2);
z = sqrt(x.^2 + y.^2);
figure;
surf(x, y, z);
title('Ejercicio 5: f(x,y) = sqrt(x^2 + y^2)');
xlabel('X');
ylabel('Y');
zlabel('f(X,Y)');
colormap autumn;
shading interp;

% Ejercicio 6: f(x,y) = x^2 + 4y^2 + 1
[x, y] = meshgrid(-2:0.2:2, -2:0.2:2);
z = x.^2 + 4*y.^2 + 1;
figure;
surf(x, y, z);
title('Ejercicio 6: f(x,y) = x^2 + 4y^2 + 1');
xlabel('X');
ylabel('Y');
zlabel('f(X,Y)');
colormap spring;
shading interp;
