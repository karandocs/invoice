class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #associations
  has_many :invoices, dependent: :destroy

  #validations
  validates :full_name, presence: true
  validates :mobile, presence: true
end
