class CreateOrdersProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_products do |t|
      t.integer :order_id
      t.integer :product_id
    end
  end
end