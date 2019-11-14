class CashRegister
  attr_accessor :total, :discount, :items, :last
  
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  #def discount
  #  @discount
  #end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    @last = (price * quantity)
    @items << item
    apply_discount
  end

  def apply_discount
    if discount > 0
      @total -= (total * discount / 100)
      puts "After the discount, the total comes to $#{total}."
    else
      'There is no discount to apply.'
    end
  end

  def void_last_transaction
    @total -= last
  end
end
