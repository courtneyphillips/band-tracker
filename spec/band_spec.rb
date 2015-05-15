require('spec_helper')

describe(Band) do
    it { should have_many_and_belong_to_many(:venues) }
    it { should validate_presence_of(:name) }
    it { should_not allow_value("").for(:name) }
    it { should allow_value("band name").for(:name) }
    it { should callback(:titlecase_name).before(:save) }
end
