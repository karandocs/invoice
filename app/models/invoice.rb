class Invoice < ApplicationRecord
#associations
has_many :products

#validations
validates :invoicing_date, presence: true
validates :due_date, presence: true
validates :terms_and_conditions, acceptance: true

end
