class User < ApplicationRecord
    has_secure_password
    has_one :cart
    has_many :cart_items, through: :cart
    has_many :items, through: :cart_items
    has_many :transactions
    has_many :items, through: :transactions

    validates :username, presence: true
    validates :username, length: { minimum: 2 }
    validates :password, length: { in: 4..20 }
end
