function sir

  % Modelo SIR - Comportamiento de enfermedades
  % Velocidad de contagio, velocidad de recuperación
  % Suceptibles, contagiados y recupedados


  global beta gamma;

  beta = 0.001; % Tasa de transmisión
  gamma = 0.05; % Tasa de recuperación

  S0 = 99; % Suceptibles: el 100% de mi población
  I0 = 1; % Infectados: 1
  R0 = 0; % Recuperados
  tMax = 300;

  % dS = - beta * S * I;
  % dI = ( beta * S * I ) - ( gamma * I );
  % dR = gamma * I;

  x0 = [ S0 I0 R0 ];

  [ t , x ] = ode45( "diferencialesSir", [0 tMax], x0 );

  plot(t, x(:,1), t, x(:,2), t, x(:,3) ); grid; legend("S", "I", "R")
  endfunction


