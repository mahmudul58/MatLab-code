clc;
close all;
clear all;

A = [.3 .52 1; .5 1 1.9;.1 .3 .5]; % Define the coefficient matrix A

b = [-.01; .67;-.44]; % Define the constant vector b

det_A = det(A);  % Calculate the determinant of A

if det_A == 0  % Check if A is invertible
    disp('A is singular. No unique solution exists.');
else
    % Create matrices A_x, A_y, and A_z
    A_x = A; A_x(:, 1) = b;
    A_y = A; A_y(:, 2) = b;
    A_z = A; A_z(:, 3) = b;

    % Calculate determinants of A_x, A_y, and A_z
    det_A_x = det(A_x);
    det_A_y = det(A_y);
    det_A_z = det(A_z);

    % Calculate x, y, and z using Cramer's Rule
    x = det_A_x / det_A;
    y = det_A_y / det_A;
    z = det_A_z / det_A;

    % Display the solution
    fprintf('x = %.2f\n', x);
    fprintf('y = %.2f\n', y);
    fprintf('z = %.2f\n', z);
end