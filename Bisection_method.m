clc;
close all;
clear all;

f = @(x) -0.6*(x.^2) + 2.4*x + 5.5; 

a = 5;
b = 10;
n = 100;

if f(a) * f(b) < 0
    for i = 1:n
        c = (a + b) / 2;

        if f(a) * f(c) < 0
            b = c;
        elseif f(b) * f(c) < 0
            a = c;
        end
    end
    fprintf('Root found : %f\n', c);
else
    fprintf('No root found between given brackets\n');
end