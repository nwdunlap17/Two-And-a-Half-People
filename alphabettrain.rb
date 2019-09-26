def train(line)
alphabet = 'abcdefghijklmnopqrstuvwxyz'

    countArr = []
    alphabet.length.times do |i|    
        valid = false
        count = 0
        max_count = 0
        line.length.times do |k|
            if line[k] == alphabet[i] 
                count += 1
                if count > max_count
                    max_count = count
                end
            else
                count = 0
            end
        end
        countArr << max_count
    end

    endval = -1
    highest = countArr.max
    countArr.length.times do |i|
        if countArr[i] == highest
            endval = i
        end
    end

    endval = (endval+highest)%26
    puts alphabet[endval]
end

# File.open("test.txt").each do |line|
#     train(line)
# end

lines = ARGF.read.split("\n")
lines.each do |line|
    train(line)
end