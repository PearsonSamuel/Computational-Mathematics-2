function res=tabela(n)
T=10;
h=10/n;
f=@(t,y,y1,y2) (-8*(y^2)*y1)-(((4*t)/(1+t^2))*y2);
tk=0+h:h:T;
yk=RK(f,0,1,0,-2,n);
yk(1)=[];
ytk=arrayfun(@(t) (1+t.^2).^-1,0+h:h:T);
erros=abs(ytk-yk);
res=table(tk',yk',ytk',erros','VariableNames',{'tk','yk','y(tk)','|y(tk)-yk|'});
end