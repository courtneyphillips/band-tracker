require('spec_helper')

describe(Venue) do
  it("ensures blank venue names are not submitted") do
    new_venue = Venue.new({:name => ""})
    expect(new_venue.save()).to(eq(false))
  end


it {should have_many_and_belong_to (:venues) }
end
