class Order
  attr_reader :price, :quantity, :member

  def initialize(price:, quantity:, member:)
    @price = price
    @quantity = quantity
    @member = member
  end

  def total_price
    subtotal - discount_amount
  end

  private

  def subtotal
    @price * @quantity
  end

  def discount_rate
    member ? 0.1 : 0.0
  end

  def discount_amount
    subtotal * discount_rate
  end
end