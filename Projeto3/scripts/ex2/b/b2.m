x=linspace(0,1,1000);
Y=a2(0,1,K,f,31);
y=Y(x);
z=sqrt(x);

figure(1)
hold on
plot(x,y,"k")
plot(x,z,"r")
hold off