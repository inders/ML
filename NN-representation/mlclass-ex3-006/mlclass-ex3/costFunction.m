function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

%fprintf('size of theta is %f\n', size(theta));
%fprintf('size of X is %f\n', size(X));
%fprintf('size of y is %f\n', size(y));

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

z =  X * theta;
hypothesis = sigmoid(z);

negY = -1 .* y;
y1cost =  log(hypothesis);

oneHypothesis = ones(size(hypothesis));

y0cost = log (oneHypothesis .- hypothesis);

cost = negY .* y1cost - ((ones(size(y)) + negY) .* y0cost);

J = sum(cost)/m;

%hypothesis will be m*1 and y is m*1..take transpose and make 1*m and X is m*n so this produce 1*n..and theta is column vector(n*1) so again take transpose
grad = ((hypothesis - y )' * X)' / m;



% =============================================================

end
