function[word] = create_blank(len)
    word = '';
    for i = 1:len
        word = strcat(word, '-');
    end
end