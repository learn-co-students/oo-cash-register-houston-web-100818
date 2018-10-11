require 'pry'

class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount   
        @items = []     
    end

    attr_accessor :total, :discount, :items, :last_transaction_amount
    
    def add_item(title, price, quantity = 1)        
        self.total += price * quantity
        quantity.times do 
            self.items << title
        end
        self.last_transaction_amount = price
    end

    def apply_discount
        if discount > 0
            @total -= total * discount/100
            "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.items.pop
        self.total -= self.last_transaction_amount
    end
        # binding.pry
end