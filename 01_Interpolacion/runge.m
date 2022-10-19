function [x,y] = runge (n)
  % Paradoja de runge
  f = @(x) 1./ (x.^2+1);
  x = linspace(-5,5,n)
  y = f(x);
  plot(x,y);
end
