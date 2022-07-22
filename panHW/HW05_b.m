clc;clear;
solinit = bvpinit (linspace (0, 1000,5000), [1.5;1]);
opts = bvpset('Stats','on');
sol = bvp4c (@ode11, @bc, solinit,opts);
t = sol.x;
y = sol.y;
%n=0:10;
figure(1)
h1=plot(t,y(1,:));
title('x')
set(h1,'LineWidth' ,1.5)

% hold on
% [q,s]=runge(1.5,1,0.3183,0.005);
% h2=plot(n,q,'r');
% set(h2,'LineWidth' ,1.5);

% hold on
% [q,s]=ode45('eg',[0 10],[1.5 0.3183]);
% h2=plot(n,q,'r');
% set(h2,'LineWidth' ,1.5);


figure(2)
h3=plot (t, -y(2,:));
set(h3,'LineWidth' ,1.5);
title('u')


x0=1.5;

function dydt = ode11(t,y)
dydt = [ -y(1)^3-y(2)
    -y(1)+3*y(2)*y(1)^2];
end

function res = bc(ya, yb)
res=[ya(1)-1.5
    yb(1)-1];
end

% function ds = eg(q,s)
% ds=[-s(1)*s(1)*s(1)-s(2);
% -s(1)+3*s(2)*s(1)*s(1)];
% end