require 'rails_helper'

RSpec.describe Strain, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "validates uniqueness names of strain" do
    should validate_unsiqueness_of(:name)
  end

  it "is invalid without a name" do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid
  end

  it "is invalid with a blank name" do
    strain = Strain.new(name: "")
    expect(strain).to be_invalid
  end

  it "is valid with a name" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_valid
  end

end
