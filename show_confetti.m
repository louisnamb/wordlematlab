function[] = show_confetti()
    % Parameters
    numParticles = 100;         % Number of confetti particles
    confettiColors = rand(numParticles, 3);  % Random colors for each particle
    xPositions = rand(1, numParticles) * 10; % Random initial x positions
    yPositions = rand(1, numParticles) * 10; % Random initial y positions
    ySpeed = rand(1, numParticles) * 0.1;    % Different falling speeds for each particle
    figure;
    
    % Plot initial confetti positions
    h = scatter(xPositions, yPositions, 100, confettiColors, 'filled');
    xlim([0 10]);
    ylim([0 10]);
    hold on;
    
    % Confetti falling animation loop
    for t = 1:200
        % Update y positions of the confetti (falling effect)
        yPositions = yPositions - ySpeed;
        
        % Reset the confetti that fall below y = 0
        resetIndex = yPositions < 0;
        yPositions(resetIndex) = 10;           % Move them back to the top
        xPositions(resetIndex) = rand(1, sum(resetIndex)) * 10;  % Randomize x positions
        
        % Update the scatter plot with new positions
        set(h, 'XData', xPositions, 'YData', yPositions);
        
        % Pause for animation effect
        pause(0.05);
    end
end