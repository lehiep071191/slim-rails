class AddSubtotalToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :subtotal, :integer
  end
end
