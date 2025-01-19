clc
close all;
clear all;

f=@(x) exp(-x)-x;
x0=0;
x1=1;
for i=1:10
    x2=x1-f(x1)*((x1-x0)/(f(x1)-f(x0)));
    if abs(x2-x1)<.001
        break;
    end
    x0=x1;
    x1=x2;
end
fprintf('The root is : %f',x2);