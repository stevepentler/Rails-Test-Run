require 'rails_helper'

RSpec.feature "User submits a new resort" do
  scenario "they see the page for the individual resort" do
    resort_name       = "Steamboat"
    resort_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
save_and_open_page
    visit resorts_path
    click_on "New resort"
    fill_in "resort_name", with: resort_name
    fill_in "resort_image_path", with: resort_image_path
    click_on "Create Resort"

    expect(page).to have_content resort_name
    expect(page).to have_css("img[src=\"#{resort_image_path}\"]")
  end

end