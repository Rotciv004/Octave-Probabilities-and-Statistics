clear all
pkg load statistics

% Prompt user for probability p and number of simulations N
p = input("Enter the probability p (0 < p < 1): ");
N = input("Enter the number of simulations N: ");

% Generate N samples from the Geometric(p) distribution
geometric_samples = zeros(1, N);
for i = 1:N
    count = 0;
    while rand() >= p
        count = count + 1;
    end
    geometric_samples(i) = count;
end

% Display the results
disp("Geometric distribution simulation results:");
disp(geometric_samples);

% Calculate and plot the relative frequency
U_X = unique(geometric_samples);
n_X = hist(geometric_samples, U_X);
rel_freq = n_X / N;

% Theoretical probability mass function
k = 0:max(geometric_samples);
pr = (1 - p) .^ k .* p;

% Plot simulated vs theoretical values
plot(U_X, rel_freq, "*", k, pr, "ro");
legend("simulated", "theoretical");
xlabel("Number of failures (k)");
ylabel("Probability");
title("Geometric Distribution Simulation vs Theoretical PMF");

