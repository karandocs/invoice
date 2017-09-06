require 'rails_helper'

RSpec.describe Product, :type => :model do
  subject { described_class.new(name: "Test", invoice_id: 7) }

  describe "Validations" do
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "Check if invoice_id is correct" do
      expect(subject.invoice_id).to eq 7
    end
  end
end
