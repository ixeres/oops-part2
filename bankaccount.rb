class BankAccount

  @@interest_rate = 1.3
  @@accounts = [] #Try to remember that '[]' is an empty array, so you can stop looking it up.

  #'@@' denotes Class Variables.

  attr_accessor :balance

  def initialize(name) #Initial values. I guess it should technically go with the other instance variables, but... I like it here.
    @balance = 0
    @name = name #this lets the name operation in 'create' fill in an account name.
  end

  # Class Methods Go Here.

    def self.list_accounts
      @@accounts
    end

    def self.create(name = "Account #{@@accounts.length}")
      @@accounts << BankAccount.new(name)
      @@accounts[-1] #this lets me run instance methods on the accounts. Otherwise I get errors because they are part of an array.
    end

    def self.total_funds
      total = 0
      @@accounts.each do |account|
        total += account.balance
      end
      puts "$#{total}"
    end

    def self.time_interest
      @@accounts.each do |account|
        account.gain_interest
      end
    end

    #Note to self: CHECK YOUR SPELLING. AC*C*-OUNTS. Dummy.

  # Instance Methods Go Here.

  def deposit(cash)
    @balance += cash
  end

  def withdraw(cash)
    @balance -= cash
  end

  def gain_interest
    @balance = (@balance * @@interest_rate)
  end

  def get_balance
    puts "You have $#{@balance} in your bank account."
  end
end
