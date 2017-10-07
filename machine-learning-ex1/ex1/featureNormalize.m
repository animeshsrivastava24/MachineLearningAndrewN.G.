function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
%You will do this for all the features and your code should work with
%datasets of all sizes (any number of features / examples). Note that each
%column of the matrix X corresponds to one feature.
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
mu = mean(X);
sigma = std(X);

for i = 1:size(X,2)
    X_norm(:,i) = (X(:,i) - mu(i)) / sigma(i);
end
end
