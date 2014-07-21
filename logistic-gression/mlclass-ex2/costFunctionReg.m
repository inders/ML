function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

%fprintf('size of theta is %f\n', size(theta));
%fprintf('size of X is %f\n', size(X));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

[cost, gra]= costFunction(theta, X, y);
regPart = ((lambda/(2*m)) * (sum(theta .* theta) - theta(1,1) ^2 ));

J = cost + regPart;

z =  X * theta;
hypoth = sigmoid(z);

grad(1,1) = ((hypoth - y )' * X(:, 1))' / m;

for i = 2 : size(theta, 1)
	     grad(i,1) = (((hypoth - y )' * X(:, i))' / m ) + lambda/m * theta(i,1);
end

% =============================================================

end
