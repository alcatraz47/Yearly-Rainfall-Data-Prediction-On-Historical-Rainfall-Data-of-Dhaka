function plotData(X,y)
figure;
#plot(X(1), X(2), X(3), y, 'k+', 'LineWidth', 2, 'MarkerSize', 7);
#plot(y, 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
plot(X,y,'k+', 'LineWidth', 2, 'MarkerSize', 7)
xlabel ('Years');
ylabel ('Rain in Milimeter');
end