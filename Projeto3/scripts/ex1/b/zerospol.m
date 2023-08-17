
% alínea b)

function [lista] = zerospol(n)

% verificar que n é inteiro >= 1
%if n<1 || mod(n,1) ~= 0
%    disp("n deve ser um inteiro positivo");


% calcular zeros
%else 
    syms x1
    lista = vpasolve(legendrepol(n)==0,x1);
end
%end

