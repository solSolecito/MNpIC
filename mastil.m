function mastil

  # Sobre la vela de un barco actuan las fuerzas del viento,
  # en función de la distancia hasta la cubierta
  # Si un cable va desde la punta hasta la cubierta,
  # que tensión debe tener este para que el mastil se mantenga vertical

  # int(f(z)zdz)
  clear;

  f = @(z) 200 * z .* exp( -2.*z / 30 ) ./ ( 5 + z );

  # zmax es mi altura máxima
  zmax = 30;
  # n es el numero de ciclos que voy a hacer
  n = 10;



  incremento = 30/n;
  array = 0:incremento:30;
  # en este arreglo tengo todos los z que necesito

  trapecio = @(g,p,h) ( g + p ) * h / 2;

  # inicializo la fuerza en 0
  fuerza = 0;
  # inicializo un vector de centroides
  #  centroide, area, c*a
  areas = 0;
  centroides = 0;

  for i = 1: n
    #Parte 1. Fuerza
    g = array(i+1) * f(array(i+1));
    p = array(i) * f(array(i));
    fuerza = fuerza + trapecio(g,p,incremento);
    #Parte 2. centroide
    c = array(i) + (incremento/2);
    a =  array(i)*incremento;
    ca = c * a;

    areas = areas + a;
    centroides = centroides + ca;
  endfor

  fuerza
  centro = centroides/areas
endfunction
