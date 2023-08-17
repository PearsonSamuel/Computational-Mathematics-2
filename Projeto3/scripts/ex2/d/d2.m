format long
Iexato=@(x) x.*sqrt(x)/(1+x) -sqrt(x) ;
pts1=[1,3,7,15,31];
pts2=[2,4,6,10,14,18];
tab=zeros(2,6);
for i=1:6
    Y2=simpcomp(0,1,K,f,pts2(i));
    if i==6
        tab(:,6)=[0;abs(Iexato(1)-Y2(1))];
    else
        Y1=comptrapz(0,1,K,f,pts1(i));
        tab(:,i)=[abs(Iexato(1)-Y1(1));abs(Iexato(1)-Y2(1))];
    end
end
tab
ordem=zeros(2,5);
for i=1:5
    if i==5
        ordem(:,i)=[0;log(tab(2,i)./tab(2,i+1))./log(19/15)];
    else
        ordem(:,i)=[log(tab(1,i)./tab(1,i+1))./log(2);log(tab(2,i)./tab(2,i+1))./log((pts2(i+1)+1)/(pts2(i)+1))];
    end
end
ordem