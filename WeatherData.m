% Author Name: Luca Franco
% Email: franco18@students.rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date: 10/11/2024

% Create 'weather_data.txt' file
fileID = fopen('weather_data.txt', 'w');
fprintf(fileID, 'Date,Temperature,Humidity,Precipitation\n');
fprintf(fileID, '2024-09-01,25.5,60,0\n');
fprintf(fileID, '2024-09-02,26.0,65,5\n');
fprintf(fileID, '2024-09-03,24.5,70,10\n');
fprintf(fileID, '2024-09-04,23.0,75,15\n');
fprintf(fileID, '2024-09-05,22.5,80,20\n');
fclose(fileID);

% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extract numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

% Calculate statistics
avg_temperature = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);

% Save statistics to 'weather_summary.txt'
summaryFileID = fopen('weather_summary.txt', 'w');
fprintf(summaryFileID, 'Average Temperature: %.2f\n', avg_temperature);
fprintf(summaryFileID, 'Average Humidity: %.2f\n', avg_humidity);
fprintf(summaryFileID, 'Total Precipitation: %.2f\n', total_precipitation);
fclose(summaryFileID);
