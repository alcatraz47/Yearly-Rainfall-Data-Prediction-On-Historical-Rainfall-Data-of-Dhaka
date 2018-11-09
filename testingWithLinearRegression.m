clear;
close all;
clc
testingData = load('testingData.txt');
theta = load('theta.txt');% theta take jei file e rakhsilam oitare eikhane call korsi
test = testingData(:, 1);%oi training data r moto same kahini just X y er exchange e test and yaxis name disi
yaxis = testingData(:, 2);
plotData(test,yaxis)
title("Testing Data with Linear Regression");
s = length(test);
test = [ones(s,1), testingData(:, 1)];
prediction = test*theta;
hold on
plot(test(:, 2), prediction, '-')
legend('Test data', 'Linear regression')
hold off
m = size(yaxis,1);
squaredErrors = (prediction - yaxis).^2;%squared error poraisilo na Sir/Ma'am e? oita ber korsi. ar ekta kaaj korsi each and every row ke square korsi loop use kori nai er poriborte .^2 use korsi. ei dot ta dile per element e kaaj korbe each row er
J_cv = 1/(2*m) * sum(squaredErrors);
fprintf("\nTesting Error %f\n", J_cv);
