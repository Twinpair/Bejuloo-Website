class Testimonial < ApplicationRecord

  # Default order is set by services order_listed attribute 
  default_scope -> { order(order_listed: :asc) }
  validates :quote, presence: true
  before_validation :order_listed_is_num

  def self.increment_order(id, order_listed)
    Testimonial.where("order_listed >= ? AND id != ?", order_listed, id).update_all("order_listed = order_listed + 1")
  end

  def self.decrement_order(id, order_listed)
    Testimonial.where("order_listed > ? AND id != ?", order_listed, id).update_all("order_listed = order_listed - 1")
  end

private

  def order_listed_is_num
    if self.order_listed <= 0
      errors.add(:order, "field should be a number greater than 0")
    end
  end
  
end
