function[] = display_blank(blank_guess, len)
    i = 1;
    while i <= len
        if blank_guess(i) == 0
            blank_guess(i) = '-';
        end
        i = i + 1;
    end
    fprintf("%s", blank_guess);
end