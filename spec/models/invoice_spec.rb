require 'rails_helper'

RSpec.describe Invoice, :type => :model do
  subject { described_class.new(invoicing_date: Date.today, due_date: Date.today + 1, user_id: 78, terms_and_conditions: true) }

  describe "Validations" do
    it "is not valid without a terms_and_conditions" do
      subject.terms_and_conditions = false
      expect(subject).to_not be_valid
    end
    it "Check if invoicing_date is correct" do
      expect(subject.invoicing_date).to eq Date.today
    end
  end
end
