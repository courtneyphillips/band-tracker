require('spec_helper')

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }
  it { should validate_presence_of(:name) }
  it { should_not allow_value("").for(:name) }
  it { should allow_value("venue name").for(:name) }
end
