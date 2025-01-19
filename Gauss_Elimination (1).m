clc
close all;
clear all;
% coeffcient matrix A
A=[3 -0.1 -0.2;
    0.1 7 -0.3;
    0.3 -0.2 10];
% Right-Hand side vector B
B=[7.85;-19.3;71.4];
N=length(B);
% Augmented Matrix
Aug = [A B];
for j=1:N-1
    for i=j+1:N
        m=Aug(i,j)/Aug(j,j);
        Aug(i,:) = Aug(i,:)-m*Aug(j,:);
    end
end
% Display the upper triangular matrix
disp('Upper triangular matrix after Gaussian elimination:');
disp(Aug);
X = zeros(N, 1); % Initialize solution vector
X(N) = Aug(N,N+1) / Aug(N,N); % Solve for the last variable
for k = N-1:-1:1
    X(k) = (Aug(k,N+1) - Aug(k,k+1:N) * X(k+1:N)) / Aug(k,k);
end
disp('Solution vector [x1, x2, x3]:');
disp(X);