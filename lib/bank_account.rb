class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  ACCOUNT = []

  def initialize(name, status="open")
    @name = name
    @balance = 1000
    @status = status
  end

  def deposit(amount)#double check later
    @balance += amount
    ACCOUNT << balance
  end

  def withdraw(amount)
    @balance -= amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.status == "open" && self.balance == 1000 ? true : false
  end

  def close_account
    self.status.clear
    self.status = "closed"
  end
end
