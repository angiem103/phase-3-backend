class Product < ActiveRecord::Base
    has_many :order_products
    has_many :orders, through: :orders_products
    has_many :customers, through: :orders
end