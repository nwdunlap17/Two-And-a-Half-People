def chess(line)
    posits = line.split(' ')
    pawn = [posits[0][0],posits[0][1]]
    bishop = [posits[1][0],posits[1][1]]

    alphabet = 'abcdefgh'

    alphabet.length.times do |letter|
        if pawn[0] == alphabet[letter]
            pawn[0] = letter + 1
        end
        if bishop[0] == alphabet[letter]
            bishop[0] = letter + 1
        end
    end

    x_diff = (pawn[0].to_i - bishop[0].to_i).abs
    y_diff = (pawn[1].to_i - bishop[1].to_i).abs

    if x_diff.abs == y_diff.abs
        p 'captured'
        else
        p 'safe'
        end
end




# File.open("test.txt").each do |line|
#     chess(line)
# end

lines = ARGF.read.split("\n")
lines.each do |line|
    chess(line)
end
