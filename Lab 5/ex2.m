pkg load statistics

% Data
X = [7,7,4,5,9,9,...
     4,12,8,1,8,7,...
     3,13,2,1,17,7,...
     12,5,6,2,1,13,...
     14,10,2,4,9,11,...
     3,5,12,6,10,7];


% Parametrii inițiali
alpha = 0.05;
n = length(X);
xbar = mean(X);
s2 = var(X, 1);
s = sqrt(s2);




% Subpunctul (a)
sigma = 5;
z_alpha2 = norminv(1 - alpha/2);

margin_of_error_a = z_alpha2 * (sigma / sqrt(n));

lower_bound_a = xbar - margin_of_error_a;
upper_bound_a = xbar + margin_of_error_a;


fprintf('Subpunct (a):\n');
fprintf('Interval de încredere (95%%) pentru media (când sigma este cunoscut): [%.2f, %.2f]\n', lower_bound_a, upper_bound_a);





% Subpunctul (b)
t_alpha2 = tinv(1 - alpha/2, n - 1);

margin_of_error_b = t_alpha2 * (s / sqrt(n));

lower_bound_b = xbar - margin_of_error_b;
upper_bound_b = xbar + margin_of_error_b;


fprintf('\nSubpunct (b):\n');
fprintf('Deviația standard a eșantionului (s): %.2f\n', s);
fprintf('Interval de încredere (95%%) pentru media (când sigma NU este cunoscut): [%.2f, %.2f]\n', lower_bound_b, upper_bound_b);





% Subpunctul (c)
df = n - 1;
chi2_lower = chi2inv(alpha/2, df);
chi2_upper = chi2inv(1 - alpha/2, df);


var_lower = (df * s2) / chi2_upper;
var_upper = (df * s2) / chi2_lower;


std_lower = sqrt(var_lower);
std_upper = sqrt(var_upper);


fprintf('\nSubpunct (c):\n');
fprintf('Interval de încredere (95%%) pentru variață: [%.2f, %.2f]\n', var_lower, var_upper);
fprintf('Interval de încredere (95%%) pentru deviația standard: [%.2f, %.2f]\n', std_lower, std_upper);

