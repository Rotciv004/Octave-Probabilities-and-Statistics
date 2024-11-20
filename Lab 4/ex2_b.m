pkg load statistics

% Prompt user for parameters n, p, and number of simulations N
n = input("Enter the number of trials n (n > 0): ");
p = input("Enter the probability p (0 < p < 1): ");
N = input("Enter the number of simulations N: ");

% Generate N samples from Binomial(n, p)
U = rand(n, N);
X = sum(U < p);

k = 0:n;
pr = binopdf(k, n, p);

U_X = unique(X);
n_X = hist(X, length(U_X));

rel_freq = n_X / N;

plot(U_X, rel_freq, "*", k, pr, "ro");
legend("sim", "bino");

