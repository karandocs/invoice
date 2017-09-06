Fabricator(:user) do
  full_name{Faker::Name.first_name}
  email{Faker::Internet.email}
  mobile {Faker::PhoneNumber.cell_phone}
  password 'abcd1234'
end
