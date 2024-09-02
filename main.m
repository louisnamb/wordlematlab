% This project is a Matlab version of worlde, with dynamic word selections
% and an interactive interface. This main file is to initialise all
% the first basic features.
clc;
clear all;
clear;
fprintf("Welcome to Worlde. You have 5 guesses to find the mystery word!\n\n");
fiveLetterWords = ["aborn", "about", "above", "abuzz", "accus", "acerb", "acidy", "acned", "acred", "acrid", "acted", "acute", "adapt", "added", "addle", "adept", "adult", "adust", "aeger", "afire", "afoot", "afoul", "Afric", "after", "again", "agape", "aggie", "aggro"];
% randomly index element in fiveLetterWords array
selectedWord = char(fiveLetterWords(round(rand()*length(fiveLetterWords)+1)));
prevGuess = [];
correctLen = length(selectedWord);
%fprintf("leng: %d\n", correctLen);
for iCount = 1:correctLen
    prevGuess = [prevGuess; displayState(prevGuess, correctLen)];
    comparison(iCount, prevGuess, correctLen, selectedWord);
    if strcmp(prevGuess(iCount), selectedWord)
        return;
    end
    if size(prevGuess,1) == correctLen+1
        return ;
    end
%    fprintf("icount: %d\n", iCount);
    fprintf("\t%d/%d", iCount, correctLen);
    fprintf("\t\t-----------------\t\t\n\n\n");
end
