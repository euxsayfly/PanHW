function [x, y] = runge(x0, x1, y0, h)
n = (x0 - x1) / h;
x = zeros(n + 1,1);
y = zeros(n + 1,1);
x(1) = x0;
y(1) = y0;
for i = 1:n
    
    k11 = gun(x(i), y(i));
    k21 = fun(x(i), y(i));
    k12 = gun(x(i) +k11* 0.5*h, y(i) + k21*h/2);
    k22 = fun(x(i) +k11* 0.5*h, y(i) + k21*h/2);
    k13 = gun(x(i) +k12* 0.5*h, y(i) + k22*h/2);
    k23 = fun(x(i) +k12* 0.5*h, y(i) + k22*h/2);
    k14 = gun(x(i)+k13* h, y(i) + k23*h);
    k24 = fun(x(i)+k13* h, y(i) + k23*h);
    x(i + 1) = x(i) + h*(k11 + 2*k12 + 2*k13 + k14)/6;
    y(i + 1) = y(i) + h*(k21 + 2*k22 + 2*k23 + k24)/6;
end
end


function z = fun(x, y)
z = -x+3*y*x*x;

end
function z = gun(x, y)
z =  -x^3-y;

end