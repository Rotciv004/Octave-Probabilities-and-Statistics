figure;
subplot(2, 1, 2);

% Parameters
p = 0.02;
n_values = [30, 50, 100, 200];

% Visualization
hold on;
x = 0:20;
for n = n_values
    lambda = n * p;
    binom_pdf = binopdf(x, n, p);
    poisson_pdf = poisspdf(x, lambda);

    % Plot Binomial distribution
    plot(x, binom_pdf, 'DisplayName', ['Bino(n=', num2str(n), ', p=', num2str(p), ')']);

    % Plot Poisson approximation
    if n == n_values(end)
        plot(x, poisson_pdf, '--', 'DisplayName', 'Poisson Approximation');
    end
end

legend;
xlabel('x');
ylabel('Probability Density');
title('Poisson Approximation of Binomial Distribution');
hold off;
