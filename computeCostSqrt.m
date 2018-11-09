function J = computeCostSqrt(X, X_val, y, theta)
m = length(y); 
J = 0;
prediction = theta(1) + theta(2)*X + theta(3)*X_val;
squaredErrors = (prediction - y).^2;
J = 1/(2*m) * sum(squaredErrors);
end
