class ChangDatatypePaymentMethodToOrders < ActiveRecord::Migration[5.2]

 def change
    change_column :orders, :payment_method, :boolean, default: false
 end

end
