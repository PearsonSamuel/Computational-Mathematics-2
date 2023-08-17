
% alínea a) parte 2

% calcular valores teorico e integral

final = [];

for k = 1:1:8 
    for j = 1:1:8

        p = legendrepol(k)*legendrepol(j);
        funp = matlabFunction(p);
        int = integral(funp,-1,1);

        if k == j
            teorico = 2/(2*k+1);
        else 
            teorico = 0;
        end 

        final = [final, int, teorico];

    end
end

% devolve true caso os pares de valores sejam iguais 

iguais = true;
tol = 10^(-10);

i=1;
while i <= length(final) && iguais
    if abs(final(i) - final(i+1)) > tol
        iguais = false;
    i = i+2;
    end
end 

disp(iguais)

