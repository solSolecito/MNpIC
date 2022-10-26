function [u] = borde(x,y,X,Y)
    if (x == 0)
      u = exp(y) - cos(y)
     elseif (x == X)
      u = exp(y) .* cos(X) - exp(X) .* cos(y)
     elseif (y == 0)
      u = cos(x) - exp(x)
     else
      u = exp(Y) .* cos(x) - exp(x) .* cos(Y)
     endif
  endfunction
