require 'pry'

class CashRegister

    attr_accessor :total, :discount, :cart, :last_transaction

    
    def initialize(discount = 0)
        self.total = 0
        self.discount = discount
        @cart = []
        @last_transaction = 0
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do 
            @cart<< title
            @last_transaction = price
        end
    end

    def apply_discount
        self.total -= (self.discount/100.0) * self.total
        if self.discount > 0
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        self.total -= @last_transaction
    end

end
