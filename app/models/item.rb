class Item < ApplicationRecord
    has_many :cart_items
    has_many :carts, through: :cart_items
    has_many :users, through: :carts
    belongs_to :category
end
