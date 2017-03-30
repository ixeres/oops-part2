class BankAccount

  @@interest_rate = 1.3
  @@accounts = [] #Try to remember that '[]' is an empty array, so you can stop looking it up.

  #'@@' denotes Class Variables.

  attr_accessor :balance

  def initialize #Initial values. I guess it should technically go with the other instance variables, but... I like it here.
    @balance = 0
  end

  # Class Methods Go Here.

    def self.create
      @@accounts << BankAccount.new
    end

    def self.total_funds
      total = @@accounts.sum
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
