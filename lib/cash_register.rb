class CashRegister

    attr_reader :discount
    attr_accessor :total

    def initialize(discount=0)
        @total=0
        @discount=discount
        @itemList=[]
        @priceList=[]
        @quantityList=[]
    end

    def add_item(title, price, quantity=1)
        @quantityList.push(quantity)
        i=0
        while i < quantity
            @itemList.push(title)
            @priceList.push(price)
            i += 1
        end
        self.total += price*quantity
    end

    def apply_discount
        if @discount > 0
            dazhe=100-@discount
            self.total=self.total*dazhe/100
            return "After the discount, the total comes to $#{self.total}."
        end
        "There is no discount to apply."
    end



    def items
        if @itemList.length == 2
            return @itemList
        end

        return @itemList
    end

    def void_last_transaction
        i=0
        while i < @quantityList[@quantityList.length-1]
            @total -= @priceList[@priceList.length-1]
            @priceList.pop
            @itemList.pop
            i += 1
        end

    end

end
