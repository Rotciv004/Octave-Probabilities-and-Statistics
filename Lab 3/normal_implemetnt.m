pkg load statistics;

% Part (a) Inputs
mu_a = input('Enter the mean (mu) for Normal distribution (Part a): ');
sigma_a = input('Enter the standard deviation (sigma) for Normal distribution (Part a): ');

% Part (a):
P_X_le_0_normal = normcdf(0, mu_a, sigma_a);
P_X_ge_0_normal = 1 - P_X_le_0_normal;

% Display results
fprintf('P(X ≤ 0) for Normal: %f\n', P_X_le_0_normal);
fprintf('P(X ≥ 0) for Normal: %f\n', P_X_ge_0_normal);

% Part (b) Inputs
mu_b = input('Enter the mean (mu) for Normal distribution (Part b): ');
sigma_b = input('Enter the standard deviation (sigma) for Normal distribution (Part b): ');

% Part (b):
P_X_between_normal = normcdf(1, mu_b, sigma_b) - normcdf(-1, mu_b, sigma_b);
P_X_outside_normal = 1 - P_X_between_normal;

% Display results
fprintf('P(−1 ≤ X ≤ 1) for Normal: %f\n', P_X_between_normal);
fprintf('P(X ≤ −1 or X ≥ 1) for Normal: %f\n', P_X_outside_normal);

% Part (c) Inputs
mu_c = input('Enter the mean (mu) for Normal distribution (Part c): ');
sigma_c = input('Enter the standard deviation (sigma) for Normal distribution (Part c): ');
alpha_c = input('Enter the value of alpha (0 < alpha < 1) for quantile calculation (Part c): ');

% Part (c):
x_alpha_normal = norminv(alpha_c, mu_c, sigma_c);

% Display results
fprintf('Quantile xα for α = %f for Normal: %f\n', alpha_c, x_alpha_normal);

% Part (d) Inputs
mu_d = input('Enter the mean (mu) for Normal distribution (Part d): ');
sigma_d = input('Enter the standard deviation (sigma) for Normal distribution (Part d): ');
beta_d = input('Enter the value of beta (0 < beta < 1) for quantile calculation (Part d): ');

% Part (d):
x_beta_normal = norminv(1 - beta_d, mu_d, sigma_d);

% Display results
fprintf('Quantile xβ for β = %f for Normal: %f\n', beta_d, x_beta_normal);
