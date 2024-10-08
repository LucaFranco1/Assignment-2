% Author Name: Luca Franco
% Email: franco18@students.rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: 10/11/2024

function encrypted_message = caesar_cipher(message, shift)
    % Initialize an empty string for the encrypted message
    encrypted_message = '';
    
    % Loop through each character in the message
    for i = 1:length(message, shift)
        % Get the current character
        current_char = message(i);
        
        % Shift the character within the alphabet
        shifted_char = char(mod(double(current_char) - 'a' + shift, 26) + 'a');
        
        % Append the shifted character to the encrypted message
        encrypted_message = [encrypted_message, shifted_char];
    end
% Prompt the user for input
message = input('Enter a message (lowercase letters only): ', 's');
shift = input('Enter a shift value (1 to 25): ');

% Validate the shift value
if shift < 1 || shift > 25
    error('Shift value must be between 1 and 25.');
end

% Call the caesar_cipher function
encrypted_message = caesar_cipher(message, shift);

% Print the original and encrypted messages
fprintf('Original Message: %s\n', message);
fprintf('Encrypted Message: %s\n', encrypted_message);
end
