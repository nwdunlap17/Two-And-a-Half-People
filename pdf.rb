def pdf(fillIns,story)

    story.each do |line|
        madlibs = line.split('%')
        madlibs.length.times do |i|
            fillIns.keys.each do |key|
                if madlibs[i] == key
                    madlibs[i] = fillIns[key]
                end
            end
        end
        p madlibs.join('').chomp
    end

end


fillIns = {}
story = []
File.open("test.txt").each do |line|
    if line.include? '='
        splits = line.split('=')
        fillIns[splits[0]] = splits[1].chomp
    else
        story << line
    end
end

# pdf(input)
pdf(fillIns,story)