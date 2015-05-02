class Item < ActiveRecord::Base
  validates :price, { numericality: { greater_than: 0 } }
  validates :name, :description, presence: true

  has_many :positions
  has_many :carts, through: :positions
  has_many :comments, as: :commentable
  has_and_belongs_to_many :orders
end
