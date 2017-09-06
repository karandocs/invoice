Fabricator(:invoice) do
  customer_name { Faker::Name.name }
  invoicing_date { Date.today }
  due_date { Date.today + 10 }
  payment_mode ['cash', 'cheque', 'draft'].sample
  terms_and_conditions true
end
