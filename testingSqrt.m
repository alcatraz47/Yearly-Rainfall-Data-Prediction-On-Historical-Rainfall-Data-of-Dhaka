clear;
close all;
clc
data = load('crossValidationData.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y);
plotData(X,y)
title("Testing Data Vizualization and Prediction");
theta = load("thetaSqrt.txt");
Xroot = sqrt(X);
X = [ones(m,1) X];
X = [X Xroot];
h = X*theta;
hold on
plot(X(:, 2), h, '-r')
legend('Testing data', 'Square Rooted Polynomial regression')
hold off
squaredErrors = (h - y).^2;%squared error poraisilo na Sir/Ma'am e? oita ber korsi. ar ekta kaaj korsi each and every row ke square korsi loop use kori nai er poriborte .^2 use korsi. ei dot ta dile per element e kaaj korbe each row er
J_t = 1/(2*m) * sum(squaredErrors);
fprintf("\nCross Validation Error %f\n", J_t);