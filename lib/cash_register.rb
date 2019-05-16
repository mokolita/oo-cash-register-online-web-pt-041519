require 'pry'

class CashRegister
  attr_accessor :total, :discount 
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    
  end 
  
  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity  
  
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end  
    
  end 
  
  def apply_discount
    if discount > 0  
      discount = @discount.to_f / 100
      @total =  @total - (@price.to_f * discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end 
  end 
  
  def items
     @items
  end 
  
  def void_last_transaction
    @total = 0
  end 
end 
