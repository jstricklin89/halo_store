class Item < ApplicationRecord
    has_many :cart_items
    has_many :carts, through: :cart_items
    has_many :users, through: :carts
    has_many :transactions
    has_many :users, through: :transactions
    belongs_to :category

    def category_sort
        Item.all.sort_by do |item|
            item.name
        end
    end

    def item_all
        Item.all
    end

    def self.items_by_price
        Item.all.sort_by {|item| item.price}    
    end 

    def self.items_by_price_reverse
        Item.all.sort_by {|item| item.price}.reverse    
    end 
end
