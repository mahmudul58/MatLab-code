clc;
close all;
clear all;

f = @(x) -0.6*x^2 + 2.4*x + 5.5; % Define the function
a = 5;
b = 10;
n = 10;
e = 0.0001;

if f(a)*f(b) < 0 && a < b
    for i = 1:n
        c = (a*f(b) - b*f(a)) / (f(b) - f(a));
        if f(a) * f(c) < 0
            b = c;
        elseif f(b) * f(c) < 0 
            a = c;
        end
    end
end

fprintf('The root is : %.4f',c);