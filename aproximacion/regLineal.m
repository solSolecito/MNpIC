function [a] = regLineal (xList, yList)
    n = length(xList);
    sx = sum(xList);
    sy = sum(yList);
    sx2 = sum(xList.^2);
    sxy = sum(xList .* yList);

    a = [];

    a(1) = ( (n.*sxy) - (sx.*sy) )/ ((n.*sx2) -( sx.^2));
    a(2) = sy - (a(1)*sx);

    y = @(x) a(1) * x + a(2);

    xGraph = linspace(xList(1), xList(n), 100);
    yGraph = y(xGraph);
    plot (xGraph, yGraph, xList, yList, "o" );

endfunction
