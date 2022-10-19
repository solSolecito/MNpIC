function L = poli_lagrange(xx, k);
  n = length(xx);
  xk = xx(k);
  L = @(x) 1;
  for i = 1:n;
    xi = xx(i);
   L = @(x) L(x) .* (x-xi)./ (xk)-xi);
  endfor
% Dada una nube de puntos, necesito obtener el polinomio interpolador

  % P = suma (ai * li)
  % P es una función de x
  % function puntos = polinomio(x)
  % Como genero la función P?
  % function L = poli_lagrange(xx, k);
  % L = function (x)
  %
  %
  % Evaluo P en todo el rango de la nube de puntos y grafico
  end
