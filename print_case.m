function[] = print_case(lettercase, iChars, guesses, currRow)
    switch lettercase
        case 1
            fprintf("'%c' in position %d is in the correct position.\n", guesses(currRow, iChars), iChars);
        case 0
            fprintf("'%c' in position %d is not in the mystery word!\n", guesses(currRow, iChars), iChars);
        otherwise
            fprintf("'%c' in position %d is in the mystery word, however not in the right position.\n", guesses(currRow, lettercase), lettercase);
    end
end