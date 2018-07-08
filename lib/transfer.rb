require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if valid? && self.sender.balance >= amount && self.status == "pending"
    receiver.deposit(amount)
    sender.withdraw(amount)
    if self.status = "complete"
      self.status != "pending"
    end
  end

  def reverse_transfer
    self.status = "rejected"
    
  end
end
