function language
% r = 1;
% fun = @(x, r) func1(x, r);
% x1=fzero(@(x) fun(x,r), 0.65);
% disp(x1);
xo=0.8;
iv=[xo];
tspan=[0 50];
[t,u]=ode45(@deriv,tspan,iv);
plot(u(:,1));
end


function ydot=deriv(t,y)
a=1.50;
s=0.33;
x=y(1);
xdot=0.1*x*(1-x)*(x^(a-1)*s-((1-x)^(a-1))*(1-s));
ydot=[xdot];
end