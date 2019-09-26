def primes 
    primes = [2,3,5,7,11,13]
    num = 13
    while num < 1437#87341
        isPrime = true
        num += 2
        primes.each do |prime|
            if num%prime == 0
                isPrime = false
                next
            end
        end 
        if isPrime
            primes << num
            end
    end
    return primes
end

def optprimes(index)
    thePrimes = primes()
    palin = thePrimes.select {|num|
        string = num.to_s
        string == string.reverse
    } 

    return palin[index-1]
end


lines = ARGF.read.split("\n")
lines.each do |line|
   p optprimes(line.chomp.to_i)
end