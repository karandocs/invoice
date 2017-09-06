Fabricator(:product) do
  name { Faker::Name.name }
  invoice
end
