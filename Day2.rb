#variable
name = "Jhon Railei Dugayo"
#input that use to_i to convert input into integers
puts"enter your age"
Age = gets.to_i
course = true
Num = [1,2,3,4,5,6]
#Output
puts name
puts Age
puts course

#String interpolation
puts ""
puts "Hello everyone my name is #{name} and i am #{Age} yrs old, and if you're asking if im a ComScie Student well #{course}"
puts""
#if and else conditions
if Age >= 18 
    puts "Legal Age"
elsif Age < 18
    puts "Minor"
end

#accessing array
puts "accessing array"
puts Num[1]


#loop
puts "LOOP"
Num.each do |number|
    puts number

end

while Num > 0 