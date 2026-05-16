require 'pry'
require 'byebug'
numbers = [1,2,3,4,5,6,7,8,9,10]
con = true
binding.pry
byebug
begin
    puts "[1]. Even"
    puts "[2]. Odd"
    puts "[3]. Any?"
    puts "[4]. All?"
    puts "[5]. Reduce"
    puts "[0]. Exit"
    print "Please enter key :"
    input = gets.chomp
    case input
    when "1"
        even = numbers.map {|number| number.even?}
        puts ""
        p even
        puts""
    when "2"
        odd = numbers.map {|number| number.odd?}
        puts ""
        p odd
        puts""
    when "3"
        any_even = numbers.any? {|number| number.even?}
         puts ""
        p any_even
        puts""
    when "4"
        all_odd = numbers.all? {|number| number.odd?}
         puts ""
        p all_odd
        puts""
    when "5"
        sum = numbers.reduce(0) {|index, number| index + number}
         puts ""
        p sum
        puts""
    when "0"
        break
    end
end while con == true