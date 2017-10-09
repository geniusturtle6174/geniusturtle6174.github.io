clear all;
close all;

initGuess = 0.6;
precision = 10^-3;
x = linspace(0, 3, 500);
y = cos(x);
plot(x, y,'r-');
line(initGuess,cos(initGuess), 'linestyle', ':'); 
text(initGuess, cos(initGuess), 'initial guess', 'FontSize', 17);
grid on;
hold on;

i = 1;
while(abs(cos(initGuess))>precision)
    next_guess = initGuess - cos(initGuess)/(-sin(initGuess));
    line([initGuess next_guess],[cos(initGuess) 0], 'linestyle', ':'); % tangent line
    line([next_guess next_guess],[0 cos(next_guess)], 'linestyle', ':'); % vertical line
    initGuess = next_guess;
    line(initGuess,cos(initGuess), 'linestyle', ':');
    text(initGuess,cos(initGuess),['guess' num2str(i)],'FontSize',17);
    i = i + 1;
end
title(['times for convergence:' num2str(i-1)]);
