class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount.to_f
    @items = []
    @last_transaction = []
  end
  
  def add_item(item, price, quantity = 1)
      self.total += price*quantity
      quantity.times {@items.push(item)}
      @last_transaction.push([item, price, quantity])
  end
  
  def apply_discount
    if self.discount > 0 
      self.total -= self.total.to_f * self.discount/100.0
      "After the discount, the total comes to $#{self.total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    last_transaction = @last_transaction.pop
    self.total -= last_transaction[1] * last_transaction[2]
  end
  
  
end
