json.extract! invoice, :id, :customer_name, :invoicing_date, :due_date, :terms_and_conditions, :payment_mode, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
