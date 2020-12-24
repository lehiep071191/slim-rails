class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :quantity
      t.integer :product_id

      t.timestamps
    end
  end
end
