numbers = [1,2,3,4,5,6]


#regular map
trippled = numbers.map do |number|
    number * 3
end

p trippled
#shorten version
doubled = numbers.map {|number| number * 2}

p doubled

#select
even = numbers.select do |number| 
    number.even? 
end
p even

#shorten version of select
odd = numbers.select {|number| number.odd?}
p odd

#reduce, so it will combine all of item inside of array start from index 0 which is the total 
sum = numbers.reduce(0) {|total,number| total + number}
p sum

# any? , check if theres any item in array based to condition
has_even = numbers.any? {|number| number.even?}
p has_even

# all? , check if all item in the array are same base on the condition
all_even = numbers.all? {|number| number.even?}
p all_even