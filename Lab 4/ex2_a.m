
% Prompt user for probability p and number of simulations N
p = input("Enter the probability p (0 < p < 1): ");
N = input("Enter the number of simulations N: ");

% Generate N samples from Bernoulli(p) using U(0,1)
U = rand(1, N);
X = (U < p);

U_X = [0 1];

% Display the results
disp("Bernoulli simulation results:");
disp(X);

n_X = hist(X, length(U_X));

rel_freq = n_X/N;

disp(rel_freq);

