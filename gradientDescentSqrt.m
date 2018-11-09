function [theta, J_history] = gradientDescentSqrt(X, X_val, y, theta, alpha, num_iters)
m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
	hypothesis = theta(1) + theta(2)*X + theta(3)*X_val;
	theta = theta - alpha*(1/m)*(sum((hypothesis-y).*X'));
   
    J_history(iter) = computeCostSqrt(X, y, theta);

end

end
