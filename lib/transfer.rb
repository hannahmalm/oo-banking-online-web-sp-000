class Transfer
  attr_accessor :status, :amount, :sender, :receiver
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end  
  
  def valid?
    #if sender.bank_account.valid? && receiver.bank_account.valid? == true then Transfer is valid 
    if @sender.valid? && @receiver.valid? == true 
      true 
    else 
      false 
    end   
  end 
  
  def execute_transaction
    if @sender.valid? == false || @sender.balance <= 0 
      puts "Transaction rejected. Please check your account balance."
      
    end   
  end   
  
  def reverse_transfer
    
  end   
end
