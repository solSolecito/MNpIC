function [ dx ] = diferencialesSir ( t, x )

  global beta gamma;

  S = x(1);
  I = x(2);
  R = x(3);

  fdS =  - beta * S * I;
  fdI = ( beta * S * I) - (gamma * I);
  fdR = gamma * I;

  dx = [ fdS fdI fdR ]

 endfunction;
