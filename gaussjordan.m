function u = gaussjordan (matriz, resultado)
  % esta matriz solo
  matrizMod = matriz;
  res = resultado;
  [ nrow, ncol ] = size(matrizMod);
  % size (a, 1) = filas

  for r = 1: nrow;
    for i = r : nrow;
      % si es la primera fila divido todos elementos entre ese factor
      if (i == r),
        % recorro una por una las filas y hallo el factor por el que voy a dividir la primera fila;
        % deberia validar que el factor no sea cero
        factor = matrizMod(r,r);
        res(i) = res(r)./ factor;
        for c = r : ncol;
          matrizMod(i, c) = matrizMod(i, c)./factor;
        endfor
      else
        for c = r : ncol;
          factor = matrizMod(i, r);
          matrizMod(i, c) =  matrizMod(i, c) - ((matrizMod(r, c).*factor));
        endfor
        res(r) = res(i) - res(r).*factor;
      endif
      % si es cualquier otra, multiplico los elementos de la primera fila por ese factor y los resto con la fila
    endfor
  endfor
  u = [matrizMod transpose(res)]
endfunction
