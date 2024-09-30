class BankAccount
    attr_reader :account_number, :balance
  
    def initialize(account_number, initial_balance)
      @account_number = account_number
      @balance = initial_balance
      puts "\t Welcome to VIJAY MALLYA BANK"
    end
  
    def withdraw(amount)
      if amount > @balance
        puts "Insufficient balance!"
      else
        @balance -= amount
        puts "Withdrawal successful. New balance: #{@balance}"
      end
    end
  
    def display_details
      puts "Your Account Number: #{@account_number}"
      puts "Your Current Balance: #{@balance}"
    end
  end
  
  account = BankAccount.new("1234567890", 10000)
  
  account.display_details
  puts "Enter Amount to Withdrawl"
  amt = gets.chomp.to_i 
  account.withdraw(amt)
  account.display_details

  