function[] = play_celebration()
    [dataX, dataY] = audioread("Kool&TheGang-Celebration.mp3");
    sound(dataX(1:815000,1), dataY);
    musicPlay = audioplayer(dataX, dataY);
    play(musicPlay);
end
% This code was extracted from https://www.youtube.com/watch?v=d7BwSz3rqtU