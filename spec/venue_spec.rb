require('spec_helper')

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }
end

  # 
  # it("ensures blank venue names are not submitted") do
  #   new_venue = Venue.new({:name => ""})
  #   expect(new_venue.save()).to(eq(false))
  # end
