
pkg load statistics;

% Part (a) Inputs
mu_a = input('Enter the mean (mu) for Normal distribution (Part a): ');
sigma_a = input('Enter the standard deviation (sigma) for Normal distribution (Part a): ');
n_a = input('Enter the degrees of freedom (n) for Student''s T distribution (Part a): ');
m_a = input('Enter the degrees of freedom (m) for Fisher distribution (Part a): ');

fprintf('\n\n');

% Part (a): P(X ≤ 0) and P(X ≥ 0)
P_X_le_0_normal = normcdf(0, mu_a, sigma_a);
P_X_ge_0_normal = 1 - P_X_le_0_normal;

P_X_le_0_student = tcdf(0, n_a);
P_X_ge_0_student = 1 - P_X_le_0_student;

P_X_le_0_fisher = fcdf(0, m_a, n_a);
P_X_ge_0_fisher = 1 - P_X_le_0_fisher;

% Display results
fprintf('P(X ≤ 0) for Normal: %f\n', P_X_le_0_normal);
fprintf('P(X ≥ 0) for Normal: %f\n\n', P_X_ge_0_normal);

fprintf('P(X ≤ 0) for Student: %f\n', P_X_le_0_student);
fprintf('P(X ≥ 0) for Student: %f\n\n', P_X_ge_0_student);

fprintf('P(X ≤ 0) for Fisher: %f\n', P_X_le_0_fisher);
fprintf('P(X ≥ 0) for Fisher: %f\n\n\n', P_X_ge_0_fisher);

% Part (b) Inputs
mu_b = input('Enter the mean (mu) for Normal distribution (Part b): ');
sigma_b = input('Enter the standard deviation (sigma) for Normal distribution (Part b): ');
n_b = input('Enter the degrees of freedom (n) for Student''s T distribution (Part b): ');
m_b = input('Enter the degrees of freedom (m) for Fisher distribution (Part b): ');

fprintf('\n\n');

% Part (b): P(−1 ≤ X ≤ 1) and P(X ≤ −1 or X ≥ 1)
P_X_between_normal = normcdf(1, mu_b, sigma_b) - normcdf(-1, mu_b, sigma_b);
P_X_outside_normal = 1 - P_X_between_normal;

P_X_between_student = tcdf(1, n_b) - tcdf(-1, n_b);
P_X_outside_student = 1 - P_X_between_student;

P_X_between_fisher = fcdf(1, m_b, n_b);
P_X_outside_fisher = 1 - P_X_between_fisher;

% Display results
fprintf('P(−1 ≤ X ≤ 1) for Normal: %f\n', P_X_between_normal);
fprintf('P(X ≤ −1 or X ≥ 1) for Normal: %f\n\n', P_X_outside_normal);

fprintf('P(−1 ≤ X ≤ 1) for Student: %f\n', P_X_between_student);
fprintf('P(X ≤ −1 or X ≥ 1) for Student: %f\n\n', P_X_outside_student);

fprintf('P(−1 ≤ X ≤ 1) for Fisher: %f\n', P_X_between_fisher);
fprintf('P(X ≤ −1 or X ≥ 1) for Fisher: %f\n\n\n', P_X_outside_fisher);

% Part (c) Inputs
mu_c = input('Enter the mean (mu) for Normal distribution (Part c): ');
sigma_c = input('Enter the standard deviation (sigma) for Normal distribution (Part c): ');
n_c = input('Enter the degrees of freedom (n) for Student''s T distribution (Part c): ');
m_c = input('Enter the degrees of freedom (m) for Fisher distribution (Part c): ');
alpha_c = input('Enter the value of alpha (0 < alpha < 1) for quantile calculation (Part c): ');

fprintf('\n\n');

% Part (c): Quantile xα such that P(X ≤ xα) = α
x_alpha_normal = norminv(alpha_c, mu_c, sigma_c);
x_alpha_student = tinv(alpha_c, n_c);
x_alpha_fisher = finv(alpha_c, m_c, n_c);

% Display results
fprintf('Quantile xα for α = %f for Normal: %f\n', alpha_c, x_alpha_normal);
fprintf('Quantile xα for α = %f for Student: %f\n', alpha_c, x_alpha_student);
fprintf('Quantile xα for α = %f for Fisher: %f\n\n\n', alpha_c, x_alpha_fisher);

% Part (d) Inputs
mu_d = input('Enter the mean (mu) for Normal distribution (Part d): ');
sigma_d = input('Enter the standard deviation (sigma) for Normal distribution (Part d): ');
n_d = input('Enter the degrees of freedom (n) for Student''s T distribution (Part d): ');
m_d = input('Enter the degrees of freedom (m) for Fisher distribution (Part d): ');
beta_d = input('Enter the value of beta (0 < beta < 1) for quantile calculation (Part d): ');

fprintf('\n\n');

% Part (d): Quantile xβ such that P(X ≥ xβ) = β
x_beta_normal = norminv(1 - beta_d, mu_d, sigma_d);
x_beta_student = tinv(1 - beta_d, n_d);
x_beta_fisher = finv(1 - beta_d, m_d, n_d);

% Display results
fprintf('Quantile xβ for β = %f for Normal: %f\n', beta_d, x_beta_normal);
fprintf('Quantile xβ for β = %f for Student: %f\n', beta_d, x_beta_student);
fprintf('Quantile xβ for β = %f for Fisher: %f\n', beta_d, x_beta_fisher);

