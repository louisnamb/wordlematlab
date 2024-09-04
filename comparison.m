function[bool] = comparison(currRow, guesses, expectedLen, correctGuess)
   % currRow = size(guesses, 1);
    correctCount = 1;
%    known = "-----";
 %   known = update_known(known);
 %   correctIndex = -1;
%    lettercase = 0;
   % blank_guess = zeros(1, expectedLen);
    [guessRow, ~] = size(guesses);
    if guesses(guessRow) == ""
        play_loss();
        bool = 1;
        return ;
    end
    %fprintf("herr1\n");
  %  for iChar = 1:length(currRow)
  %      if guesses(currRow, iChar) == correctGuess(iChar)
  %          correctCount = correctCount + 1;
  %      end
    for i = 1:expectedLen
        if ft_issame(guesses(currRow, correctCount), correctGuess(correctCount))
            correctCount = correctCount + 1;
        end
    end
    %fprintf("herr2\n");
    if correctCount-1 == expectedLen
        fprintf("Congratulations, you've guessed the word correctly!\n");
        play_celebration();
        show_confetti();
        bool = 1;
        return ;
    end
    %fprintf("herr3\n");
    for iChars = 1:expectedLen
   %     lettercase = 0;
        % check if guessed character is in mystery word
        for iLetters = 1:expectedLen
      %      fprintf("--------%c=%c?----\n", guesses(currRow, iChars), correctGuess(iLetters));
            if guesses(currRow, iChars) == correctGuess(iLetters)
            %    fprintf("---%c=%c?---", guesses(currRow, iChars), correctGuess(iLetters));
                if iLetters == iChars && ft_issame(guesses(currRow, iChars), correctGuess(iChars))
                    print_case(1, iChars, guesses, currRow);
                 %   blank_guess(iLetters) = correctGuess(iLetters);
                    break;
                else
             %       lettercase = iChars;
                    %blank_guess(iChars) = correctGuess(iChars);
                    print_case(iChars, iChars, guesses, currRow);
                    break ;
                end
            end
        end
    end
%    %fprintf("herr4\n");
 %   display_blank(blank_guess, expectedLen);
    bool = 0;
end