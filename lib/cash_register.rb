require 'pry'

class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    
    attr_accessor :discount, :total, :items, :last_trans
    
    # def total=(val)
    #     @total += val
    # end

    # def total
    #     @total
    # end



    def add_item(title, price, quantity = 1)
      
    
        @total += price * quantity
        
            quantity.times do
            items << title
            end
            self.last_trans = price * quantity
       
    end

    def apply_discount
        if discount > 0
        self.total -= self.total * (discount.to_f/100)
    #     x = self.total.to_i
        
    #  return "After the discount, the total comes to $" + x.to_s + "."

     return "After the discount, the total comes to $" + self.total.to_i.to_s + "."
        else
           return "There is no discount to apply."
        end
    end

    

    def void_last_transaction

      self.total -= last_trans
      
    end


end

