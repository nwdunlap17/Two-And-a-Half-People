def chess(line)
    posits = line.split(' ')
    pawn = [posits[0][0],posits[0][1]]
    bishop = [posits[1][0],posits[1][1]]

    alphabet = 'abcdefgh'

    alphabet.length.each do |letter|
        if pawn[1] == alphabet[letter]
            pawn[1] = letter + 1
        end
        if bishop[1] == alphabet[letter]
            bishop[1] = letter + 1
        end
    end

    x_diff = pawn[0] - bishop[0]
    y_diff = pawn[1] - bishop[1]

    if x_diff.abs == y_diff.abs
        p 'captured'
        else
        p 'safe'
        end
end




File.open("test.txt").each do |line|
    chess(line)
end