class AddUserIdToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :user_id, :integer
  end
end
