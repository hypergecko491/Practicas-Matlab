f = @(x) x.^5 - x.^2 + 1;
a = -5;
b = 5;
tol = 0.05;
max_iter = 100;
i = 0;

while (b - a)/2 > tol && i < max_iter
    c = (a + b)/2;
    if f(c) == 0
        break;
    elseif f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
    i = i + 1;
end

raiz = (a + b)/2;
fprintf('Raíz: %.6f | Iteraciones: %d | Error estimado: %.6f\n', raiz, i, abs(b - a)/2);
