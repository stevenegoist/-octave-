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
H = X * theta; %X��mx2����theta��2x1����y��mx1����
temp = H-y;
temp1 = temp .^2;
sum = sum(temp1);
J = sum/(2*m);




% =========================================================================

end
