class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    
    if @amount < @sender.balance && valid?
      sender.transfer
      sender.balance(amount)
      @status = "complete"
    else
      @staus = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
  end
    
end
