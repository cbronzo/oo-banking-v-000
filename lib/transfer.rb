class Transfer
  attr_accessor :sender, :receiver, :status
  
  def initialize
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
    
end
