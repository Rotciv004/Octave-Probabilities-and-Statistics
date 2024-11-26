pkg load statistics

X1 = [22.4, 21.7, 24.5, 23.4, 21.6, 23.3, 22.4, 21.6, 24.8, 20.0];
X2 = [17.7, 14.8, 19.6, 19.6, 12.1, 14.8, 15.4, 12.6, 14.0, 12.2];

alpha = 0.05;

n1 = length(X1);
n2 = length(X2);





% Calcul statistic

mean1 = mean(X1);
mean2 = mean(X2);

s1 = std(X1, 1);
s2 = std(X2, 1);

var1 = var(X1, 1);
var2 = var(X2, 1);



% Subpunct (a): Sigma1 = Sigma2

sp2 = ((n1 - 1) * var1 + (n2 - 1) * var2) / (n1 + n2 - 2);

sp = sqrt(sp2);

t_crit_a = tinv(1 - alpha/2, n1 + n2 - 2);

margin_a = t_crit_a * sp * sqrt(1/n1 + 1/n2);

lower_a = (mean1 - mean2) - margin_a;
upper_a = (mean1 - mean2) + margin_a;





% Subpunct (b): Sigma1 ≠ Sigma2

t_crit_b = tinv(1 - alpha/2, n1 + n2 - 2);

margin_b = t_crit_b * sqrt(var1/n1 + var2/n2);

lower_b = (mean1 - mean2) - margin_b;
upper_b = (mean1 - mean2) + margin_b;





% Subpunct (c): Raportul variațiilor

F_crit_lower = finv(alpha/2, n1 - 1, n2 - 1);
F_crit_upper = finv(1 - alpha/2, n1 - 1, n2 - 1);

lower_c = (var1 / var2) / F_crit_upper;
upper_c = (var1 / var2) * F_crit_lower;





fprintf('Subpunct (a): Interval pentru diferența mediei (Sigma1 = Sigma2): [%.2f, %.2f]\n', lower_a, upper_a);
fprintf('Subpunct (b): Interval pentru diferența mediei (Sigma1 ≠ Sigma2): [%.2f, %.2f]\n', lower_b, upper_b);
fprintf('Subpunct (c): Interval pentru raportul variațiilor: [%.2f, %.2f]\n', lower_c, upper_c);

