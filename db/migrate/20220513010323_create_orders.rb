class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.timestamp :created_at
      t.boolean :fulfilled
      t.boolean :paid
      t.integer :customer_id
    end
  end
end
