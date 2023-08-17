
% alínea d)

function [res] = aprox(n,f)

valoresf = f(zerospol(n+1));
valorespesos = pesos(n);

% soma dos valores
res = valoresf'*valorespesos;

end


% exemplo: 
% aprox(10,@(x) x^2)