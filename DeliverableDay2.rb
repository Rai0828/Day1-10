name = ""
age =0
deposit =0
withdraw = 0
balance = 0
con = true


begin
    puts "[1].Register"
    puts "[2].Withdraw"
    puts "[3].Deposit"
    puts "[4].Balance"
    puts "[0].exit"
    print"Enter key: "
    inputs = gets.chomp
    puts ""  
    puts ""
    puts ""
    case inputs
    when "1"
        print"Enter your name: "
        inputName = gets.chomp
        print"Enter your age: "
        inputAge = gets.chomp.to_i
        name = name + inputName
        age = age + inputAge
        puts""
        if age >= 18
            puts "Registration successful."
            puts ""
        else 
            puts "You’re underage."
            puts ""
        end
    when "2"
        if name.empty? && age == 0
            puts "Please register first"
            puts""
        elsif !name.empty? && age >= 18
         if balance == 0
            puts "You don't have balance, please deposit first"
            puts ""
         end
            
        end
       
    when "3"
        print "Enter Amount: "
        inputA = gets.chomp.to_f
        balance = inputA + balance
        puts "Your balance is #{balance}"
        puts""
    when "1"
        puts "Balance #{balance}"
        puts""
    end
end while con == true
