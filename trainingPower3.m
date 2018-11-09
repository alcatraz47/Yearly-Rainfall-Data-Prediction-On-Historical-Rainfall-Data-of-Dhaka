clear;
close all;
clc
data = load('input4.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y);
plotData(X,y)
title("Training Data Vizualization and Prediction");
p = polyfit(X,y,3);% ei function ta X ar y nae ar koto tomo polynomial chaitesi tar value nae jehetu 3rd polynomial chaitesi so 3 nise. bakiguloteo same just degree change
p = p';%transpose korsi amar porer code er shubidhar jonno ete kore eita ekta vector hoye jae 4x1 dimension er
theta0 = reshape(p(1:1),1,1);%reshape korsi proti row theke ekta element near jonno p(1:1) likhsi. ar erpore dimension disi 1x1 bakidi same
theta1 = reshape(p(2:2),1,1);
theta2 = reshape(p(3:3),1,1);
theta3 = reshape(p(4:4),1,1);
fprintf('Theta values are:\n');
fprintf('Theta0 : %f\n Theta1 : %f\n Theta2: %f\n Theta3: %f\n', theta0,theta1,theta2,theta3);
pp = polyval(p',X);%eikhane polyval function ta amar hypothesis hishebe kaaj kortese
hold on
plot(X, pp, '-r')
legend('Training data', '3rd Degree Polynomial regression')
hold off
%save "thetaPower3.txt" p
J = 0;
squaredErrors = (pp - y).^2;
J = 1/(2*m) * sum(squaredErrors);
fprintf("\nTraining Error %f\n", J);