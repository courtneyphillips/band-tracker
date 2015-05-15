require('spec_helper')


describe('adding a new venue', {:type => :feature}) do
  it('will successfully add a new venue to the list of all venues') do
    visit('/')
    click_link('Add New Band')
    fill_in("name", :with => "test band")
    page.check('')
    click_button("Add Band")
    expect(page).to have_content("test band")
  end
end

describe('adding a new band', {:type => :feature}) do
  it('will successfully add a new band to the list of all bands') do
    visit('/')
    click_link('Add New Band')
    fill_in("name", :with => "test band")
    page.check('')
    click_button("Add Band")
    expect(page).to have_content("test band")
  end
end
