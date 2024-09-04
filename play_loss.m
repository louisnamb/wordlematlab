function[] = play_loss()
    [dataX, dataY] = audioread("Womp Womp Womp sound effect.mp3");
    sound(dataX, dataY);
    musicPlay = audioplayer(dataX, dataY);
    play(musicPlay);
end
% This code was extracted from https://www.youtube.com/watch?v=d7BwSz3rqtU