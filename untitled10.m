function[chosenWord] = chose_range()
    four = ["home","desk","book","lamp","door","bike","tree","ship","code","song","cook","farm","bowl","gold","news"];
    five = ["apple","table","chair","bread","water","plane","grape","smart","house","river","cloud","earth","train","floor","stone"];
    six = ["bridge","camera","guitar","window","orange","market","stream","flower","garden","planet","rabbit","wallet","supply","custom","famous"];
    seven = ["picture","battery","brother","college","capture","journey","natural","freedom","concert","holiday","forever","history","program","fortune","silence"];
    eight = ["computer","notebook","hospital","airplane","mountain","building","elevator","decision","personal","industry","practice","vacation","absolute","solution","frequent"];
    nine = ["education","adventure","operation","knowledge","automatic","community","chemistry","relations","important","marketing","discovery","waterfall","foundation","satellite","economics"];
    ten = ["literature","production","revolution","experiment","innovation","protection","motivation","technology","navigation","celebration","investment","television","discussion","foundation","expression"];
    word = input("how many characters should the word be? 4-10");
    switch word
        case 4
            selectedWord = char(four(round(rand()*length(four)+1)));
        case 5
            selectedWord = char(five(round(rand()*length(five)+1)));
        case 6
            selectedWord = char(six(round(rand()*length(six)+1)));
        case 7
            selectedWord = char(seven(round(rand()*length(seven)+1)));
        case 8
            selectedWord = char(eight(round(rand()*length(eight)+1)));
        case 9
            selectedWord = char(nine(round(rand()*length(nine)+1)));
        case 10
            selectedWord = char(ten(round(rand()*length(ten)+1)));
    end
end