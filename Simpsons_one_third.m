clc
close all;
clear all;
% Define the function
f = @(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

% Define the limits of integration
a = 0;
b = 0.8;

% Number of subintervals (must be even for Simpson's 1/3 rule)
n = 100; 

% Step size
h = (b - a) / n;

% Create x values
x = a:h:b;

% Calculate function values at x
y = f(x);

% Apply Simpson's 1/3 rule
integral_simpson = (h/3) * (y(1) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-1)) + y(end));

% Display the results
fprintf('Simpson''s 1/3 Rule Approximation: %.6f\n', integral_simpson);