function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

%find number of dimensions in data
ndim = size(X,2);

%calculate mean & std for each dimension
for d = 1:ndim
mu(1,d) = mean(X(:,d));
sigma(1,d) = std(X(:,d));
end

%clone the mu and sigma matrix to be m*n..this technique helps clone mu into a M*N matrix
rmu = ones(size(X))* diag(mu);

rsigma = ones(size(X)) * diag(sigma);

X_norm = (X .- rmu) ./ rsigma;
fprintf('Size of rmu is %f\n', size(rmu));
fprintf('Size of rsigma is %f\n', size(rsigma));
fprintf('Size of X is %f\n', size(X));
fprintf('Size of X_norm is %f\n', size(X_norm));








% ============================================================

end
