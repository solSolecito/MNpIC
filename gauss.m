function [xg, wg] = gauss(n)
  % devuelve los puntos y pesos para integrar
  % con la cuadratura de Gauss-Legendre

  switch (n)
    case 1
      xg = [ 0 ];
      wg = [ 2 ];
    case 2
      xg = [ -sqrt(1/3) , sqrt(1/3) ];
      wg = [ 1 , 1 ];
    case 3
      xg = [ 0 , -sqrt(3/5) , sqrt(3/5) ];
      wg = [ 8/9 , 5/9 , 5/9 ];
    case 4
      a = sqrt( (3-2*sqrt(6/5)) / 7 );
      b = sqrt( (3+2*sqrt(6/5)) / 7 );
      xg = [ -a , a , -b , b ];
      wg = [
        (18+sqrt(30))/36 ,
        (18+sqrt(30))/36 ,
        (18-sqrt(30))/36 ,
        (18-sqrt(30))/36
      ]';
    case 5
      a = 1/3 * sqrt( 5 - 2*sqrt(10/7) );
      b = 1/3 * sqrt( 5 + 2*sqrt(10/7) );
      xg = [ 0 , -a , a , -b , b ];
      wg = [
        128/225 ,
        (322 + 13*sqrt(70))/900 ,
        (322 + 13*sqrt(70))/900 ,
        (322 - 13*sqrt(70))/900 ,
        (322 - 13*sqrt(70))/900
      ]';
    otherwise
      error("Se debe escoger hasta un máximo de 5 puntos de Gauss");
  end
end
