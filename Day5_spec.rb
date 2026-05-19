
# recursion, it call out method inside of it until it reach the stop condition
def countdown(number)
  # Base case
  if number == 0
    puts "Done!"
    return
  end

  puts number

  # Recursive call
  countdown(number - 1)
end

countdown(5)

#pattern matching, it checks the hash if match to its structure, if it match you can use the data inside of the hash
data = {name: "Railei", age: 22}
 case data
 in {name:, age:} 
 puts "#{name} is #{age}"
 end

 #rspec

 class Calculator
  def add(a, b)
    a + b
  end
end

describe Calculator do
  it "adds two numbers" do
    calc = Calculator.new

    result = calc.add(2, 3)

    expect(result).to eq(5)
  end
end