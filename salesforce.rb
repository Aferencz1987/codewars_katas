def fizzBuzz(n)
 array = Array(1..n)

 mapped = array.map do |number|
    if number % 5 == 0
        if number % 3 == 0
           "FizzBuzz"
        else
           "Buzz"
        end
    elsif number % 3 == 0
        if number % 5 != 0
           "Fizz"
        end
    else
       "#{number}"
    end
 end
 puts mapped
end

p fizzBuzz(15)
