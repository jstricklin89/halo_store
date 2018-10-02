class Item < ApplicationRecord
    has_many :cart_items
    has_many :carts, through: :cart_items
    has_many :users, through: :carts
    belongs_to :category

    def category_sort
        Item.all.sort_by do |item|
            item.name
        end
    end

    def item_all
        Item.all
    end
end
