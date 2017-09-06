# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Importing users'
Fabricate.times(5, :user)
Fabricate(:user, email: 'karan@gmail.com')
Fabricate(:user, email: 'naveen@inventblue.com')

puts 'Importing invoices'
user = User.all.find_by(email: 'naveen@inventblue.com')
Fabricate.times(20, :invoice, user: user)

puts 'Importing products'
Invoice.all.each do |invoice|
  Fabricate.times(5, :product, invoice: invoice)
end
