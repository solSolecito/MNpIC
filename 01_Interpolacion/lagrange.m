function [l] = lagrange (k, xList, x)
  n = length(xList);
  l = 1;
  for i = 1: n;
    if i~=k;
      l = l .* (x - xList(i)) ./ (xList(k) - xList(i));
    endif
  endfor
 end
