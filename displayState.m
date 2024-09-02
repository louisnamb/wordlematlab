% guesses is a 2d array, iGuess is each row
% 

function[output] = displayState(guesses, wordlen)
    [guessRow, guessCol] = size(guesses);
    iGuess = 1;
    if guessRow == wordlen+1 % if we've reached the final number of guesses
        output = [];
 %       fprintf("apparently we reached the max number of guesses")
        return ;
    end
    for iGuess = 1:guessRow
  %  while iGuess <= guessRow && ~isempty(guesses)% print current state
        if isempty(guesses)
       %     fprintf("found empty\n");
            break;
        end
        for iLetter = 1:guessCol
            fprintf(" %c ", guesses(iGuess, iLetter));
        end
        fprintf("\n");
     %   iGuess = iGuess + 1;
    end
    fprintf("What's your guess? ");
    currGuess = input("",'s');
    while length(currGuess) ~= wordlen %double check its the right length
        fprintf("Input must be %d characters long! Please try again: \n", wordlen);
        currGuess = input("",'s');
       % output = [];% make output empty
    end
 %   fprintf("matrix index: %d\n", guessRow);
    output = currGuess;
end
