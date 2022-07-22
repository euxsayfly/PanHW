function HW05
solinit=bvpinit(linspace(0,1),[10;1],2);
sol=bvp4c(@ode11,@bc,solinit);
y=sol.y;
time=sol.parameters*sol.x;
h=plot(time,y)
set(h,'LineWidth',2.5);
end
function dydt=ode11(t,y,T)
dydt=T*[-y(1)^3-y(2);3*y(2)*y(1)^2];
end

function res=bc(ya,yb,T)
res=[ya(1)-10;yb(2)-1;(-ya(1)^3+ya(2))*T+1000];
end