require('spec_helper')

describe('adding a new band', {:type => :feature}) do
  it('will successfully add a new band to the list of all venues') do
    visit('/')
    click_link('Add Band')
    fill_in("Band Name", :with => "test band")
    click_button("Add Band")
    expect(page).to have_content("Test Band")
  end
end

describe('adding a new venue and re-directing back to bands', {:type => :feature}) do
  it('will successfully add a new venue to the database') do
    visit('/')
    click_link('Add Venue')
    fill_in("Venue Name", :with => "test venue")
    click_button("Add Venue")
    expect(page).to have_content("All Bands")
  end
end

describe('listing a venue under a band', {:type => :feature}) do
  it('will list a venue as a place a band has played') do
    visit ('/')
    click_link('Add Venue')
    fill_in("Venue Name", :with => "test venue")
    click_button("Add Venue")
    click_link('Add Band')
    fill_in("Band Name", :with => "test band")
    page.check("venue[]")
    click_button("Add Band")
    click_link('Test Band')
    expect(page).to have_content("Test Venue")
  end
end

describe('alerting a user that there are no venues to attribute a band to', {:type => :feature}) do
  it('will let a user know that they need to add venues to attribute a new band to them') do
    visit('/')
    click_link('Add Band')
    expect(page).to have_content("no venues")
  end
end
