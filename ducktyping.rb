def ducktyping (lines)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    current_value = 0

    lines.each do |line|
        line.chomp
        quacks = line.split(' ')
        current_value = 0

        quacks.each do |quack|
            if quack == 'qwuack'
                print alphabet[current_value]
            end
            if quack == 'qwak'
                current_value += 1
            end
            if quack == 'quack'
                current_value -= 1
            end
        end
    end
end



lines = ARGF.read.split("\n")
ducktyping(lines)

# lines = []
# File.open("test.txt").each do |line|
#     lines << line
# end

# ducktyping(lines)