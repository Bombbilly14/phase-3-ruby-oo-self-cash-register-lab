
class CashRegister 
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount=0)
    @discount = discount
    
    @items = []
    @total = 0

  end
  def add_item(title, price, quantity = 1)
    @last_amount = price * quantity
    self.total += @last_amount
    quantity.times {self.items <<  title}
  end
  def apply_discount
    if discount > 0
    self.total -= self.total * (discount / 100.0)
    "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    self.total -= @last_amount
  end

end






































# class CashRegister
#   attr_accessor :total, :discount

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#     @last_transaction = 0
#   end

#   def add_item(title, price, quantity = 1)
#     @total += price * quantity
#     quantity.times { @items << title }
#     @last_transaction = price * quantity
#   end

#   def apply_discount
#     if @discount > 0
#       @total -= @total * (@discount / 100.0)
#       "After the discount, the total comes to $#{@total.to_i}."
#     else
#       "There is no discount to apply."
#     end
#   end

#   def items
#     @items
#   end

#   def void_last_transaction
#     @total -= @last_transaction
#   end
# end
