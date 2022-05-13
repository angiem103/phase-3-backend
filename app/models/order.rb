class Order < ActiveRecord::Base
    belongs_to :customer
    has_many :orders_products
    has_many :products, through: :orders_products
end