function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

%m = length(y); % number of training examples
%fprintf('size of X before adding theta0 1s %f\n', size(X));
%X = [ones(m, 1), X(:,:)]; % Add a column of ones to x

%fprintf('size of X %f\n', size(X));
theta = pinv(X' * X) * X' *y;

% -------------------------------------------------------------


% ============================================================

end
