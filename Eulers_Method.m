clc
close all;
clear all;

% Define the differential equation
f = @(x, y) -x*y; 

% Initial condition
x0 = 0;
y0 = 1;

% Step size
h = 0.05; % Adjust step size as needed

% End point
x_end = 0.25;

% Number of steps
n = ceil((x_end - x0) / h);

% Initialize arrays to store results
x_values = zeros(n+1, 1);
y_values = zeros(n+1, 1);

% Initial values
x_values(1) = x0;
y_values(1) = y0;

% Euler's method
for i = 1:n
    x_values(i+1) = x_values(i) + h;
    y_values(i+1) = y_values(i) + h * f(x_values(i), y_values(i));
end

% Plot the results
plot(x_values, y_values, 'o-');
xlabel('x');
ylabel('y');
title('Solution of dy/dx + xy = 0 using Euler method');
grid on;