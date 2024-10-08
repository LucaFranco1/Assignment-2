% Author Name: Luca Franco
% Email: franco18@students.rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Growth Analysis
% Date: 10/11/2024

% Create a row vector population with the data
population = [5000, 5200, 5350, 5600, 5800];

% Calculate the year-over-year growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);

% Create a 2x5 matrix pop_data
pop_data = [population; [0, growth_rate]]; % Add a 0 for the first year growth rate

% Use fprintf to print a formatted table
fprintf('Year\tPopulation\tGrowth Rate\n');
for i = 1:length(population)
    fprintf('%d\t%d\t%.2f%%\n', i, pop_data(1, i), pop_data(2, i) * 100);
end
