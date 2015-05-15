require('spec_helper')

describe(Band) do
  it("ensures blank band names are not submitted") do
    new_band = Band.new({:name => ""})
    expect(new_band.save()).to(eq(false))
  end


it {should have_many_and_belong_to (:venues) }
end
