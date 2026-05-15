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
        elsif !name.empty? && age != 0
         if balance == 0
            puts "You don't have balance, please deposit first"
            puts ""
         else
            print "Enter Amount: "
            inputB = gets.chomp.to_f
            if inputB > balance
                puts "Insufficient balance"
            elsif inputB <= balance
                balance = balance - inputB
                 puts "Your balance is #{balance}"
            end
         end
            
        end
       
    when "3"
        if name.empty? && age == 0
            puts "Please register first"
            puts""
        elsif !name.empty? && age != 0
            print "Enter Amount: "
            puts ""
        inputA = gets.chomp.to_f
        balance = balance +inputA 
        puts "Your balance is #{balance}"
        puts""
        end
        
    when "4"
        if name.empty? && age == 0
            puts "Please register first"
            puts""
        elsif !name.empty? && age != 0
               puts""
        puts "Balance #{balance}"
        puts""
        end
    when "0"
        break
    end
end while con == true
