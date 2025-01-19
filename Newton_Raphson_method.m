clc;
close all;
clear all;

% Define the function and its derivative
f = @(x) exp(-x) - x;
df = @(x) -exp(-x) - 1;

tolerance = 0.001; % Set the desired tolerance

x = input('Enter the initial value: '); % Get initial guess from user

for i = 1:10 % Iterate up to 10 times (adjust as needed)
    x_new = x - f(x) / df(x); % Newton-Raphson formula

    if abs(x_new - x) > tolerance
        x = x_new;
    else
        break; % Converged, exit the loop
    end
end

fprintf('Root found: %f\n', x);