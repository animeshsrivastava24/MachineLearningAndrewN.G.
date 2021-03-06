function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
%Let the iteration begin
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    x=X(:,2);
    h=theta(1)+(theta(2)*x);
    theta_zero= theta(1)-(alpha)*(1/m)*(sum(h-y));
    theta_one= theta(2)-(alpha)*(1/m)*(sum((h-y).*x)); %. refers to element wise multiplication
    theta=[theta_zero; theta_one];
    

    % ============================================================

    % Save the cost J in every iteration   
    % We calculated the value of theta0 and theta1 and updated it in theta matrix,we begun with
    % theta0 and theta1 to be zero and keep on updating them,and with that theta we keep on calculating 
    % the value of Costfunction 
    J_history(iter) = computeCost(X, y, theta);
    disp(J_history(iter));

end
   %the theta valuue for which the value of cost function or error function wwill be minimum will be the required theta
   display(min(J_history));
end
