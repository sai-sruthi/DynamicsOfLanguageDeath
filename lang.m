function lang
a=1.50;
s=0.8;
% c=1;
xdot=zeros();
 u=1;
for x=0:0.01:1;   
xdot(u)=0.1*x*(1-x)*(x^(a-1)*s-((1-x)^(a-1))*(1-s));
disp(xdot(u));
u=u+1;
end
plot(xdot);
end