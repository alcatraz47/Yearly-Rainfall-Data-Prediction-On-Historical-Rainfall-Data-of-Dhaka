clear;
close all;
clc
data = load('testingData.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y);
plotData(X,y)
title("Testing Data Vizualization and Prediction");
p = load("thetaPower3.txt");
pp = polyval(p',X);
hold on
plot(X, pp, '-r')
legend('Testing data', '3rd Degree Polynomial regression')
hold off
squaredErrors = (pp - y).^2;%squared error poraisilo na Sir/Ma'am e? oita ber korsi. ar ekta kaaj korsi each and every row ke square korsi loop use kori nai er poriborte .^2 use korsi. ei dot ta dile per element e kaaj korbe each row er
J_t = 1/(2*m) * sum(squaredErrors);
fprintf("\nTesting Error %f\n", J_t);