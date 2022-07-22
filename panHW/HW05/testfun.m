function dy=testfun(x,y)
dy=[-y(1)*y(1)*y(1)-y(2);
 -y(1)+3*y(2)*y(1)*y(1)];
end
% [t,f]=runge_kutta1('testfun',[1.5 0.3183],0.25,0,10);
% plot(t,f(:,1))