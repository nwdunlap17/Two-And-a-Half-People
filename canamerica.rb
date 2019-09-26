def canAmerica(array)
    p array
    x = array[0][1...100].to_f
    y = array[1][1...100].to_f
    puts x
    puts y

    amr = y
    can = x * 0.75*3.78541

    ans = nil
    country = nil

    

    if can < y
        ans = can/y - 1
        country = 'Canada'
        
    else
        ans = y/can
        country = 'America'
    end

    p "#{country} gas is #{ans} times cheaper"
end 

array = []
# File.open("test.txt").each do |line|
#     array << line.chomp
# end

lines = ARGF.read.split("\n")
lines.each do |line|
    array << line.chomp
end

    canAmerica(array)