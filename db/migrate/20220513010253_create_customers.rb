class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :address
      t.timestamp :customer_since
    end
  end
end
