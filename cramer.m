% Calcular soluciones a sistemas de ecuaciones con la regla de Cramer

function cramer

  % matriz de coordenadas generalizadas
  a = [
    0.3 0.52 1;
    0.5 1 1.19;
    0.1 0.3 0.5
  ]

  % vector de terminos independientes
  b = [-0.01 0.67 -0.44]

  gaussjordan(a, b)
endfunction
