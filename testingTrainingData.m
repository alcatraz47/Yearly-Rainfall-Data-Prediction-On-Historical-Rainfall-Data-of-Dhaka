#data = load("trainingData.txt");
clear;
close all;
clc
data = load('input4.txt');%loading data from input4 file and putting it in data variable matrix
X = data(:, 1);%X = column 1 of data matrix
y = data(:, 2);%y = column 2 of data matrix
m = length(y);%m = length of y
plotData(X,y)%plotting data of X and y by using my plotData(X,y) function
title("Testing Data Vizualization and Prediction");
X = [ones(m,1), data(:, 1)];%adding the bias column of mX1 size with the rest of the data of X
theta = zeros(2,1);%theta 2X1 initialize korsi
iterations = 1500;
alpha = 0.01;
#alpha = 0.1;
fprintf("\n\nTesting Cost Function:\n\n");
J = costWithLinearRegression(X,y,theta);%cost function theke value ber kore J te rakhechi
fprintf('With theta = [0 ; 0]\nCost computed = %.02f\n', J);
J = costWithLinearRegression(X, y, [-1 ; 2]);%andaje duita value boshae disi theta r diye J er maan ber korsi
fprintf('\nWith theta = [-1 ; 2]\nCost computed = %.02f\n', J);
pause;
fprintf('\n\nRunning Gradient Descent ...\n\n')
theta = zeros(2,1);
theta = gradientDescentLinearRegression(X, y, theta, alpha, iterations);%gradient descent function ta use kore theta ber korsi.
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);

% Plot the linear fit
% keep previous plot visible
#figure;
h = X*theta;%hypothesis ta ekhane likhsi karon ektu por plot korbo tai.
hold on%ager plot ta dhore rakhsi
plot(X(:,2), h, '-')
legend('Training data', 'Linear regression')
hold off
%save "theta.txt" theta
fprintf("\nTraining Error: %f\n", J);