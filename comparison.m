function[] = comparison(currRow, guesses, expectedLen, correctGuess)
    realRowCount = size(guesses, 1);
    correctCount = 1;
    correctIndex = -1;
    if isempty(guesses(realRowCount))
        return ;
    end
    % Check if we've already guessed the whole word
 %   for ithRow = 1:expectedLen
 %       if guesses(realRowCount, ithRow) == correctGuess(ithRow)
 %           correctCount = ithRow;
 %         %  break ;
 %       end
  %  end
    if strcmp(guesses(realRowCount), correctGuess)
        fprintf("Congratulations, you've guessed the word correctly!\n");
        return ;
    end
    % Check how/which characters in correct positions.
%    for iPerf = 1:expectedLen
 %       if guesses(realRowCount, iPerf) == correctGuess(iPerf)
  %          fprintf("'%c' is in the correct position.\n", correctGuess(iPerf));
   %     end
   % end
%    checkLtrs = 1;
    for iChars = 1:expectedLen
       % correctIndex = -1;
      %  correctCount = 0;
        lettercase = 0;
        % check if guessed character is in mystery word
        for iLetters = 1:expectedLen
         %   fprintf("->%c %c\n", guesses(realRowCount, iLetters), correctGuess(iChars))
            if guesses(realRowCount, iLetters) == correctGuess(iChars) %&& iChars == iLetters
                if iLetters == iChars
                    lettercase = 1;
                else
                    lettercase = iLetters;
                end
            end
        end
      %  if correctCount == expectedLen
      %      lettercase = 1;
           %     fprintf("'%c' is in the correct position.\n", correctGuess(iLetters));
     %   elseif guesses(realRowCount, iLetters) == correctGuess(iChars)
                % index of the matching characters
          %      lettercase = 2;
             %   fprintf("'%c' is in the mystery word, however not in the right position.\n", guesses(realRowCount, iChars));
          %      correctIndex = iLetters;
              %  break ;
         %   else%if guesses(realRowCount, iChars) ~= correctGuess(iLetters)
           %     lettercase = 3;
             %   fprintf("'%c' is not in the mystery word!\n", guesses(realRowCount, iChars))
          %  else
         %       fprintf("->%c %c\n", guesses(realRowCount, iChars), correctGuess(iLetters));
    %        end
    %    end
        switch lettercase
            case 1
                fprintf("'%c' is in the correct position.\n", guesses(realRowCount, iChars));
            case 0
                fprintf("'%c' is not in the mystery word!\n", guesses(realRowCount, iChars));
            otherwise
                fprintf("'%c' is in the mystery word, however not in the right position.\n", guesses(realRowCount, lettercase));
        end
                %        if correctIndex == -1
%            fprintf("%c is not in the mystery word!\n", guesses(realRowCount, iChars));
%            checkLtrs = checkLtrs + 1;
%        end
            % while iLetters <= expectedLen && guesses(realRowCount, iChars) ~= correctGuess(iLetters)
       %     iLetters = iLetters + 1;
        %end
      %  fprintf("iLetters: %d", iLetters);
  %      if correctIndex ~= -1 && guesses(realRowCount, iChars) == correctGuess(correctIndex)
   %         fprintf("iChar: %d, correctindex: %d", iChars, correctIndex);
   %         fprintf("'%c' is in the mystery word, however not in the right position.\n", correctGuess(iLetters));
   %         checkLtrs = checkLtrs + 1;
            %        break ;
    %    end
    end
  %  if checkLtrs ~= expectedLen
   %     fprintf("%d letters are not in the mystery word!\n", expectedLen-checkLtrs);
 %   else
 %       fprintf("\n");
   % end
end