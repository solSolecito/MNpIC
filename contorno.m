function contorno

  % y'' p(x)y'(x)+q(x)y(x)+r(x)

  % y(a) = 1
  % y(b) = 2

  % y'' = 2/x y' + 2/x2 y + sin(ln z)/x2
  % y(1) = 1; y(2) = 2

  % Divido mi x en n+1 puntos

  % y'(xi) = (y (x i+1) - y(x i-1) ) /2h
  % y''(xi) = (y (x i+1)  - 2y(xi) + y(x i-1) ) / h^2

  % (y (x i+1)  - 2y(xi) + y(x i-1) ) / h^2 = p(x)(y (x i+1) - y(x i-1) ) /2h + q(x)y(x)+r(x)
  % ((y (x i+1)  - 2y(xi) + y(x i-1) ) / h^2) - (p(x)(y (x i+1) - y(x i-1) ) /2h) - (q(x)y(x)) = r(x)

  % ((y(+1)  - 2y(0) + y(-1) ) / h^2) - (p(x)(y(+1) - y(-1) ) /2h) - (q(x)y(0)) = r(x)

  % y(+1) ( 1/h^2 - p(x)/2h ) + y(0) (-2+q(x)) + y(-1) ( 1/h^2 + p(x)/2h) = r(x)

  x = 1:0.1:2;

  y1 = 1;
  y2 = 2;

  p = @(x) 2./x;
  q = @(x) 2./x.^2;
  r = @(x) sin( log(x) )./ x.^2;

  matriz = [];

  for i = 1:length(x)
    if (i == 1)



  endfor


