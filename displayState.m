% guesses is a 2d array, iGuess is each row
% 

function[output] = displayState(guesses, wordlen, correctGuess)
    [guessRow, guessCol] = size(guesses);
    iGuess = 1;
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
    fprintf("guessRow: %d wordlen: %d\n", guessRow, wordlen);
    if guessRow == wordlen % if we've reached the final number of guesses
        output = "";
      %  fprintf("apparently we reached the max number of guesses")
        return ;
    end
    known = show_known(guesses, correctGuess, create_blank(wordlen));
    fprintf("Whats your guess? %s ", known);
    currGuess = input('','s');
    while length(currGuess) ~= wordlen %double check its the right length
        fprintf("Input must be %d characters long! Please try again: \n", wordlen);
        currGuess = input("",'s');
       % output = [];% make output empty
    end
 %   fprintf("matrix index: %d\n", guessRow);
    output = currGuess;
end
