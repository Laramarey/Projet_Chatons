class JoinCartItem < ApplicationRecord
  before_create :already_exist?

  belongs_to :cart
  belongs_to :item

  def total()
    self.item.price * self.quantity 
  end

  private

  def already_exist?
    find = JoinCartItem.find_by(cart_id: self.cart_id, item_id: self.item_id)

    if find != nil
      find.destroy
    end
  end
end
