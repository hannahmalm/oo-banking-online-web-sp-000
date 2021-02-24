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
  
    if valid? == false || @sender.balance < @amount
       @status = 'rejected'
       "Transaction rejected. Please check your account balance."
      
    else
      # #execute transaction by sending an amount from the senders bank account to the receiver bank account 
      # #update the balance by taking balance - amount 
      # whose balance are you taking? Does a transfer have a balance - No. Need to check sender balance 
      sender.balance - amount 
    end   
    
  end   
  
  def reverse_transfer
    
  end   
end
