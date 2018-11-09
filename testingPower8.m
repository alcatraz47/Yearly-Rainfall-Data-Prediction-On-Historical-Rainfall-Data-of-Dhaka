clear;
close all;
clc
data = load('testingData.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y);
plotData(X,y)
title("Testing Data Vizualization and Prediction");
p = load("thetaPower8.txt");
pp = polyval(p',X);
hold on
plot(X, pp, '-r')
legend('Testing data', '8th Degree Polynomial regression')
hold off
J_t = 0
squaredErrors = (pp - y).^2;
J_t = 1/(2*m) * sum(squaredErrors);
fprintf("\nCross Validation Error %f\n", J_t);
