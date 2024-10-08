% Author Name: Luca Franco
% Email: franco18@students.rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis
% Date: 10/11/2024

% Create and write to 'stock_data.txt'
fileID = fopen('stock_data.txt', 'w');

% Generate fictitious daily closing prices for 30 days
closing_prices = [150.25; 152.30; 151.75; 153.80; 154.00; 153.50; 155.25; ...
                  156.50; 157.10; 158.00; 157.50; 159.20; 158.75; ...
                  160.00; 161.00; 160.50; 162.25; 161.75; 163.00; ...
                  164.50; 163.50; 165.00; 166.00; 167.50; 168.00; ...
                  169.00; 170.50; 171.25; 171.75; 172.00; 172.50];

% Write the prices to the file
fprintf(fileID, '%.2f\n', closing_prices);
fclose(fileID);

% Read stock data from 'stock_data.txt'
stock_data = readmatrix('stock_data.txt');

% Calculate statistics
average_price = mean(stock_data);
highest_price = max(stock_data);
lowest_price = min(stock_data);
days_increased = sum(diff(stock_data) > 0); % Count days with an increase

% Print the calculated statistics
fprintf('Average Closing Price: %.2f\n', average_price);
fprintf('Highest Closing Price: %.2f\n', highest_price);
fprintf('Lowest Closing Price: %.2f\n', lowest_price);
fprintf('Number of Days Price Increased: %d\n', days_increased);

% Create a line plot
figure;
plot(stock_data, 'b-', 'LineWidth', 1.5); % Daily closing prices
hold on;
yline(average_price, 'r--', 'Average Price', 'LabelOrientation', 'horizontal'); % Average price
yline(highest_price, 'g--', 'Highest Price', 'LabelOrientation', 'horizontal'); % Highest price
yline(lowest_price, 'm--', 'Lowest Price', 'LabelOrientation', 'horizontal'); % Lowest price

% Add titles and labels
title('Daily Closing Prices of the Stock');
xlabel('Days');
ylabel('Closing Price ($)');
legend('Closing Prices', 'Average Price', 'Highest Price', 'Lowest Price', 'Location', 'Best');
grid on;

% Save the plot as an image file
saveas(gcf, 'stock_analysis.png');

% Write a summary of the analysis to 'stock_summary.txt'
summaryFileID = fopen('stock_summary.txt', 'w');
fprintf(summaryFileID, 'Stock Analysis Summary\n');
fprintf(summaryFileID, '------------------------\n');
fprintf(summaryFileID, 'Average Closing Price: %.2f\n', average_price);
fprintf(summaryFileID, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(summaryFileID, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(summaryFileID, 'Number of Days Price Increased: %d\n', days_increased);
fclose(summaryFileID);

disp('Stock analysis complete. Summary saved to stock_summary.txt and plot saved as stock_analysis.png.');
