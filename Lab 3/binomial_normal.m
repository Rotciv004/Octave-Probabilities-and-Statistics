
figure;
subplot(2, 1, 1);

% Parameters
p = 0.5;
n_values = [10, 30, 50, 100, 200];

% Visualization
hold on;
x = 0:200;
for n = n_values
    binom_pdf = binopdf(x, n, p);
    plot(x, binom_pdf, 'DisplayName', ['Bino(n=', num2str(n), ', p=', num2str(p), ')']);
end

% Plotting Normal approximation for the largest n value
mu = n_values(end) * p;
sigma = sqrt(n_values(end) * p * (1 - p));
normal_pdf = normpdf(x, mu, sigma);
plot(x, normal_pdf, '--', 'DisplayName', 'Normal Approximation');

legend;
xlabel('x');
ylabel('Probability Density');
title('Normal Approximation of Binomial Distribution');
hold off;
