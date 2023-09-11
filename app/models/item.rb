class Item < ApplicationRecord
  belongs_to :supermarket
  has_many :customer_items
  has_many :customers, through: :customer_items

  def total_purchased
    CustomerItem.where(item_id: self.id).count
  end
end