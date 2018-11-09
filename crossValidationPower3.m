clear;
close all;
clc
data = load('crossValidationData.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y);
plotData(X,y)
title("Cross Validation Data Vizualization and Prediction");
p = load("thetaPower3.txt");%p te load korsi amar theta value gulo jeigulo training e paisilam
pp = polyval(p',X);
hold on
plot(X, pp, '-r')
legend('Cross Validation data', '3rd Degree Polynomial regression')
hold off
squaredErrors = (pp - y).^2;%squared error poraisilo na Sir/Ma'am e? oita ber korsi. ar ekta kaaj korsi each and every row ke square korsi loop use kori nai er poriborte .^2 use korsi. ei dot ta dile per element e kaaj korbe each row er
J_cv = 1/(2*m) * sum(squaredErrors);
fprintf("\nCross Validation Error %f\n", J_cv);
