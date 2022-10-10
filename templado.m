function templado
  % Problema de valor inicial
  % [Y, inf, msg] = lsode(fcn, x0, t, tcrit);

  % Templado de una pieza de acero
  % Una pieza de acero a 600°C se sumerge en aceite a 30°C
  % Si la temperatura obedece a T'(t) = k(Ta-(T(t)))
  % Y k = 0.023 cuanto es T(92) ?

  % Datos iniciales
  tempA = 30;
  temp0 = 600;
  k = 0.023;
  tF = 92;

  % lsode
  fcn = @(T, t) k .* ( tempA - T );
  t1 = 0:tF;
  [T1] = lsode( fcn, temp0, t1 )

  disp('La temperatura luego de '), disp(tF), disp(' segundos es '), disp(T1(end)), disp('C')

  % ode45
  fcn45 = @(t, T) k .* ( tempA - T );
  tiempos = [0 tF];
  [t2, T2] = ode45( fcn45, tiempos, temp0 )

  disp('La temperatura luego de '), disp(tF), disp(' segundos es '), disp(T2(end)), disp('C')

  plot( t1, T1, t2, T2);

  error = (T2(end) - T1(end)) / T1(end)

endfunction
