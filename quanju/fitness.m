function [y]= fitness(x)
u=0;
for i=1:13
    u=u+1/(i+(x(i)-sin(i))^(2*i));
    y=1/(0.01+u);
end

