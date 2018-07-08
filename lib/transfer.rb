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
    receiver.deposit(amount) << sender.withdraw(amount)
    if self.status = "complete"
      self.status != "complete"
    end
  end

  def reverse_transfer

  end
end
