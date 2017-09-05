class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :customer_name
      t.date :invoicing_date
      t.date :due_date
      t.boolean :terms_and_conditions, default: false
      t.integer :payment_mode

      t.timestamps
    end
  end
end
