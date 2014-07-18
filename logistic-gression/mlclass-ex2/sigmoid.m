function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% sigmoid = 1/ 1+ e power -z


negz = -1 .* z;
exp = e .^ negz;

%fprintf('size of z is %f\n', size(z));
%fprintf('size of exp is %f\n', size(exp));
one = ones(size(z));

%fprintf('size of ones is %f\n', size(ones));
denom = one + exp;
%fprintf ('size of denom is %f\n', size(denom));
numerator = ones(size(z));
%fprintf ('size of num is %f\n', size(numerator));

g = numerator ./ denom;

% =============================================================

end
