
% alínea a) parte 1

% k = 1,...,8

syms x1
p1 = legendrepol(1);
p2 = legendrepol(2);
p3 = legendrepol(3);
p4 = legendrepol(4);
p5 = legendrepol(5);
p6 = legendrepol(6);
p7 = legendrepol(7);
p8 = legendrepol(8);

figure
hold on
fplot(p1, "r")
fplot(p2, "b-.")
fplot(p3, "g")
fplot(p4, "c")
fplot(p5, "b")
fplot(p6, "r--")
fplot(p7, "g-.")
fplot(p8, "m")
xlim([-1 1])
ylim([-1.5 1.5])
grid on
plot(vpasolve(p1==0,x1),0,"ko")
plot(vpasolve(p2==0,x1),0,"ko")
plot(vpasolve(p3==0,x1),0,"ko")
plot(vpasolve(p4==0,x1),0,"ko")
plot(vpasolve(p5==0,x1),0,"ko")
plot(vpasolve(p6==0,x1),0,"ko")
plot(vpasolve(p7==0,x1),0,"ko")
plot(vpasolve(p8==0,x1),0,"ko")















