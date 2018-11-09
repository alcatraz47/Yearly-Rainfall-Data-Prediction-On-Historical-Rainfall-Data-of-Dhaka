function J = costWithLinearRegression(X, y, theta)
m = length(y); 
J = 0;
hypothesis = X*theta;
squaredErrors = (hypothesis - y).^2;%squared error poraisilo na Sir/Ma'am e? oita ber korsi. ar ekta kaaj korsi each and every row ke square korsi loop use kori nai er poriborte .^2 use korsi. ei dot ta dile per element e kaaj korbe each row er
J = 1/(2*m) * sum(squaredErrors);
end
