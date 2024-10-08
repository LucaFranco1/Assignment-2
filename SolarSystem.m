% Author Name: Luca Franco
% Email: franco18@students.rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date: 10/11/2024

% Create data vectors
% Average distance from the Sun in AU
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.18, 30.07]; % Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
% Relative sizes of the planets (Earth = 1)
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88]; % Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune

% Planet names for labels
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};

% Create a figure with two subplots
figure;

% Scatter plot of planet distances vs. planet sizes
subplot(2, 1, 1); % Two rows, one column, first subplot
scatter(planet_distances, planet_sizes * 10, 100 * planet_sizes, 'filled'); % Marker size based on planet sizes
hold on;

% Add colors for each planet
colors = lines(length(planet_names)); % Get distinct colors
for i = 1:length(planet_names)
    scatter(planet_distances(i), planet_sizes(i) * 10, 100 * planet_sizes(i), 'filled', 'MarkerFaceColor', colors(i,:));
end

title('Planet Distances vs. Relative Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Size (scaled)');
legend(planet_names, 'Location', 'northeastoutside');
grid on;

% Bar chart of planet distances
subplot(2, 1, 2); % Two rows, one column, second subplot
bar(planet_distances);
set(gca, 'xticklabel', planet_names); % Set x-tick labels to planet names
title('Average Distance of Planets from the Sun');
xlabel('Planets');
ylabel('Distance (AU)');
grid on;

% Save the figure as an image file
saveas(gcf, 'solar_system_visualization.png');

disp('Figure saved as solar_system_visualization.png');
