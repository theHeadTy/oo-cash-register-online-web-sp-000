class CashRegister
  attr_accessor :total, :discount, :items, :last
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end
  
  def discount
    @discount
  end
  
  def items
    return @items
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @last = price * quantity
    @items << item
  end

  def apply_discount
    if discount > 0
      @total -= (total * discount / 100)
      return "After the discount, the total comes to $#{total}."
    end
    'There is no discount to apply.'
  end

  def void_last_transaction
    @total -= last
  end
end

dis = CashRegister.new(20)
dis.add_item('macbook air', 1000)
dis.apply_discount