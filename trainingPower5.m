clear;
close all;
clc
data = load('input4.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y);
plotData(X,y)
title("Training Data Vizualization and Prediction");
%X = [ones(m,1), data(:, 1)];
iterations = 1500;
alpha = 0.01;
p = polyfit(X,y,5);
p = p';
theta0 = reshape(p(1:1),1,1);
theta1 = reshape(p(2:2),1,1);
theta2 = reshape(p(3:3),1,1);
theta3 = reshape(p(4:4),1,1);
theta4 = reshape(p(5:5),1,1);
theta5 = reshape(p(6:6),1,1);
fprintf('Theta values are:\n');
fprintf('Theta0 : %f\n Theta1 : %f\n Theta2: %f\n Theta3: %f\n Theta4: %f\n Theta5: %f\n', theta0,theta1,theta2,theta3,theta4,theta5);
pp = polyval(p',X);
hold on
plot(X, pp, '-b')
legend('Training data', '5th Degree Polynomial regression')
hold off
%save "thetaPower5.txt" p
J = 0;
squaredErrors = (pp - y).^2;
J = 1/(2*m) * sum(squaredErrors);
fprintf("\nTraining Error %f\n", J);