function mastil_gauss

  # Sobre la vela de un barco actuan las fuerzas del viento,
  # en función de la distancia hasta la cubierta
  # Si un cable va desde la punta hasta la cubierta,
  # que tensión debe tener este para que el mastil se mantenga vertical
  # El mastil tiene 30 ft de alto, y el cable está agarrado a cubierta a 3 ft del mastil
  # int(f(z)zdz)

  f = @(z) 200 * z .* exp( -2.*z / 30 ) ./ ( 5 + z );

  a = 0;
  b = 30; # zmax es mi altura máxima

  # Cambio de variable
  z = @(zn) ((b+a) + (b-a) * zn )/2;
  jac = (b-a)/2;
  n = 2;
  [ zg, wg ] = gauss(n);

  A = jac * wg * f (z(zg))'
  Q = jac * wg * ( f (z(zg)) .* z(zg) )'
  zc = Q/A

  T = A * zc * sqrt(30^2 + 3^2) / 90

endfunction
