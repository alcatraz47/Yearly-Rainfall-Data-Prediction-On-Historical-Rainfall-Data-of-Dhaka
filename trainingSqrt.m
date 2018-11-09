clear;
close all;
clc
data = load('input4.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y);
plotData(X,y)
title("Training Data Vizualization and Prediction");
Xroot = sqrt(X);
X = [ones(m,1) X];
X_val = [ones(m,1) Xroot];
%X = [X Xroot];
theta = zeros(3,1);
h = theta(1) + theta(2)*X + theta(3)*X_val;
iterations = 1500;
alpha = 0.01;
theta = gradientDescentSqrt(X, X_val, y, theta, alpha, iterations);
J = computeCostSqrt(X, X_val, y, theta);
fprintf('Theta values are:\n');
fprintf('Theta : %f\n', theta);
fprintf('Training Error %f\n', J);
hold on
h = theta(1) + theta(2)*X + theta(3)*X_val;
plot(X(:,2), h, '-r')
legend('Training data', 'Square Rooted Polynomial regression')
hold off
%save "thetaSqrt.txt" theta
