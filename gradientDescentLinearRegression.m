function [theta, J_history] = gradientDescentLinearRegression(X, y, theta, alpha, num_iters)
m = length(y);
J_history = zeros(num_iters, 1);

%niche loop chalacchi iter namok variable diye 1 theke num_iters porjonto
for iter = 1:num_iters
  hypothesis = X * theta;
	theta = theta - alpha*(1/m)*(sum((hypothesis-y).*X)');
  J_history(iter) = costWithLinearRegression(X, y, theta);%J te protita value rakhtesi every iteration er cost history
end

end