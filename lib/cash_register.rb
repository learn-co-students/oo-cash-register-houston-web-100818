require 'pry'
class CashRegister
    attr_accessor :total, :discount, :array
    
   

    def initialize(discount= "no")
        @total = 0
        @discount = discount
        @array = []
    end

    def add_item(title, price, quantity=1)
        quantity.times do  
           @array<< title
        end
           self.total += price * quantity
           @last_transaction = price * quantity
           
    end

    def apply_discount

        if @discount == "no"
            "There is no discount to apply." 
        
        else
            @total -= @total * 20/100
            "After the discount, the total comes to $#{@total}."
        end 

    end     

    def items
       @array
    end 

    def void_last_transaction
       @total = total - @last_transaction 
    end 

end 