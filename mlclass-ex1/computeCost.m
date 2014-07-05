function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%			   fprintf('rows in X %f\n', rows(X));
%fprintf('cols in X %f\n', columns(X));

%fprintf('rows in theta %f\n', rows(theta));

%fprintf('rows in y %f\n', rows(y));
%fprintf('cols in y %f\n', columns(y));

M = ((X * theta) - y);
SM = M .* M;

J = sum(SM) ./ (2*m);
% =========================================================================

end
