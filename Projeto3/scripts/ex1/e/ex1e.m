 
% alínea e)

% PRIMEIRO INTEGRAL :

syms x
format long
f1 = matlabFunction(x^2/(1+25*x^2));
res = [];
for i = 1:1:8
    res = [res;aprox(i,f1)];
end
%disp(res)


f2 = matlabFunction(x^2/(1+25*x^2));
integral(f2,-1,1);


% calcular erros :
erro = [];
errorel = [];
for i = 1:1:8
    erro = [erro; abs(integral(f2,-1,1)-res(i))];
    errorel = [errorel; erro(i)/integral(f2,-1,1)];
end
%disp(erro)
%disp(errorel)


%--------------------------------------------------------------


% SEGUNDO INTEGRAL :

f3 = matlabFunction((pi/2)*sin(sin((5*pi/2)*(x+1))));
res2 = [];
for i = 1:1:8
    res2 = [res2; vpa(aprox(i,f3))];
end
%disp(res2)


f4 = matlabFunction((pi/2)*sin(sin((5*pi/2)*(x+1))));
integral(f4,-1,1);


% calcular erros :
erro2 = [];
errorel2 = [];
for i = 1:1:8
    erro2 = [erro2; abs(integral(f4,-1,1)-res2(i))];
    errorel2 = [errorel2; erro2(i)/integral(f4,-1,1)];
end
%disp(erro2)
%disp(errorel2)


