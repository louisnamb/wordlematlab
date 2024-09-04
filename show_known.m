function[new] = show_known(data, correct, known)
    [numRows, ~] = size(data);  % Get the size of the data array
    correct = char(correct);  
    data = char(data);
    known = char(known);
    numCols = length(data);
    for rows = 1:numRows
        for cols = 1:numCols        
            if correct(cols) == data(rows, cols)
                known(cols) = data(rows, cols);
            end
        end
    end
    new = known;
end