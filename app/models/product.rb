class Product < ApplicationRecord
  #associations
  belongs_to :invoice

  #validations
  validates :name, presence: true

end
