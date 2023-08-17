
% alínea c)

function [lista] = pesos(n)

% Ax = b

% calcular matriz A :
zeros = zerospol(n+1);
vandermondeA = fliplr(vander(zeros))';


% calcular vetor b :
vetorb = [];
for i = 0:1:n
    f = @(x) x.^i;
    vetorb = [vetorb, integral(f,-1,1)];
end

lista = inv(vandermondeA)*vetorb';
end




