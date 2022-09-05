function interpolar
  %
  xList = [1,2,2.5];
  yList = [4,12,7];

  for i = 1: length(xList);
    for k = 1: length(xList);
      lagrange(k, xList, xList(i))
    endfor
  endfor

  y = @(x) yList(1) .* lagrange(1, xList, x) + yList(2) .* lagrange(2, xList, x) + yList(3) .* lagrange(3, xList, x)

  xPoli = linspace(xList(1)-1, xList(length(xList))+1, 100)

  yPoli = y(xPoli)

 % plot(xPoli, yPoli, xr, yr, xList, yList, "marker", "o")

 hold on
 runge (5)


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
