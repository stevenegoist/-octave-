function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;%X为mx2
mu = zeros(1, size(X, 2));%mu为1x2
sigma = zeros(1, size(X, 2));%sigma为1x2

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

mu = mean(X_norm);
sigma = std(X_norm);
for i=1:size(X,2);%X为m*n矩阵，m为记录个数，n为特征量个数x1,x2,...,xn。size(X,参数)，参数为1表示取m行，为2表示取N列
  X_norm(:,i) = X_norm(:,i) - mu(i);
  X_norm(:,i) = X_norm(:,i)/sigma(i);
endfor







% ============================================================

end
