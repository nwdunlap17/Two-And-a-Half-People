def knockknock(input)
    p 'Knock knock.'
    p "Who's there?"
    p input[0]
    p input[0][0...-1]+' who?'
    p input[1]
end



input = []
File.open("test.txt").each do |line|
    input << line.chomp
end

knockknock(input)