pkg load statistics;

% Part (a) Inputs
m_a = input('Enter the degrees of freedom (m) for Fisher distribution (Part a): ');
n_a = input('Enter the degrees of freedom (n) for Fisher distribution (Part a): ');

% Part (a):
P_X_le_0_fisher = fcdf(0, m_a, n_a);
P_X_ge_0_fisher = 1 - P_X_le_0_fisher;

% Display results
fprintf('P(X ≤ 0) for Fisher: %f\n', P_X_le_0_fisher);
fprintf('P(X ≥ 0) for Fisher: %f\n', P_X_ge_0_fisher);

% Part (b) Inputs
m_b = input('Enter the degrees of freedom (m) for Fisher distribution (Part b): ');
n_b = input('Enter the degrees of freedom (n) for Fisher distribution (Part b): ');

% Part (b):
P_X_between_fisher = fcdf(1, m_b, n_b);
P_X_outside_fisher = 1 - P_X_between_fisher;

% Display results
fprintf('P(−1 ≤ X ≤ 1) for Fisher: %f\n', P_X_between_fisher);
fprintf('P(X ≤ −1 or X ≥ 1) for Fisher: %f\n', P_X_outside_fisher);

% Part (c) Inputs
m_c = input('Enter the degrees of freedom (m) for Fisher distribution (Part c): ');
n_c = input('Enter the degrees of freedom (n) for Fisher distribution (Part c): ');
alpha_c = input('Enter the value of alpha (0 < alpha < 1) for quantile calculation (Part c): ');

% Part (c):
x_alpha_fisher = finv(alpha_c, m_c, n_c);

% Display results
fprintf('Quantile xα for α = %f for Fisher: %f\n', alpha_c, x_alpha_fisher);

% Part (d) Inputs
m_d = input('Enter the degrees of freedom (m) for Fisher distribution (Part d): ');
n_d = input('Enter the degrees of freedom (n) for Fisher distribution (Part d): ');
beta_d = input('Enter the value of beta (0 < beta < 1) for quantile calculation (Part d): ');

% Part (d):
x_beta_fisher = finv(1 - beta_d, m_d, n_d);
% Display results
fprintf('Quantile xβ for β = %f for Fisher: %f\n', beta_d, x_beta_fisher);
