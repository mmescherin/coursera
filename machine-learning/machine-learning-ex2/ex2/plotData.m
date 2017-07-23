function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%



t1 = find(1 == y);
t0 = find(0 == y);

plot(X(t1, 1), X(t1, 2), 'k+', 'MarkerSize', 7, 'LineWidth', 2);
plot(X(t0, 1), X(t0, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);


% =========================================================================



hold off;

end
