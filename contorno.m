function contorno
  % y'' p(x)y'(x)+q(x)y(x)+r(x)

  % y(a) = 1
  % y(b) = 2

  % y'' = 2/x y' + 2/x2 y + sin(ln z)/x2
  % y(1) = 1; y(2) = 2

  % Divido mi x en n+1 puntos

  % y'(xi) = (y (x i+1) - y(x i-1) ) /2h
  % y''(xi) = (y (x i+1)  - 2y(xi) + y(x i-1) ) / h^2

  x = 1:0.1:2;

  p = @(x) 2./x;
  q = @(x) 2./x.^2
  r = @(x) sin( ln(x) )./ x.^2
  logaritmo = log(1)

  r(1)
