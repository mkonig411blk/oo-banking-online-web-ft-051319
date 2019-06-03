class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if valid?
    @sender.balance -= amount
    @receiver.balance += amount
    @status = "complete"
  else 
    puts "Transaction rejected. Please check your account balance."
  end 
  
  def reverse_transfer
  end

end
