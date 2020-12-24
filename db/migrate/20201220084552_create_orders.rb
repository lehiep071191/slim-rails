class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :phone
      t.integer :order_status
      t.string :address

      t.timestamps
    end
  end
end
