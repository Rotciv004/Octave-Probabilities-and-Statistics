pkg load statistics;

% Part (a) Inputs
n_a = input('Enter the degrees of freedom (n) for Student''s T distribution (Part a): ');

% Part (a):
P_X_le_0_student = tcdf(0, n_a);
P_X_ge_0_student = 1 - P_X_le_0_student;

% Display results
fprintf('P(X ≤ 0) for Student: %f\n', P_X_le_0_student);
fprintf('P(X ≥ 0) for Student: %f\n', P_X_ge_0_student);

% Part (b) Inputs
n_b = input('Enter the degrees of freedom (n) for Student''s T distribution (Part b): ');

% Part (b):
P_X_between_student = tcdf(1, n_b) - tcdf(-1, n_b);
P_X_outside_student = 1 - P_X_between_student;

% Display results
fprintf('P(−1 ≤ X ≤ 1) for Student: %f\n', P_X_between_student);
fprintf('P(X ≤ −1 or X ≥ 1) for Student: %f\n', P_X_outside_student);

% Part (c) Inputs
n_c = input('Enter the degrees of freedom (n) for Student''s T distribution (Part c): ');
alpha_c = input('Enter the value of alpha (0 < alpha < 1) for quantile calculation (Part c): ');

% Part (c):
x_alpha_student = tinv(alpha_c, n_c);

% Display results
fprintf('Quantile xα for α = %f for Student: %f\n', alpha_c, x_alpha_student);

% Part (d) Inputs
n_d = input('Enter the degrees of freedom (n) for Student''s T distribution (Part d): ');
beta_d = input('Enter the value of beta (0 < beta < 1) for quantile calculation (Part d): ');

% Part (d):
x_beta_student = tinv(1 - beta_d, n_d);

% Display results
fprintf('Quantile xβ for β = %f for Student: %f\n', beta_d, x_beta_student);

