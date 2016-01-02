require 'rails_helper'

RSpec.feature "User submits a new lift" do
  scenario "they see the page for the individual individual lift" do
    lift = create(:lift)

    lift_name = "Excelerator"

    visit resort_path(resort)
    click_on "Add lift"
    fill_in "lift_name", with: lift_name
    click_on "Create Lift"

    expect(page).to have_content lift_title
    # expect(page).to have_link resort.name, href: resort_path(resort)
  end
end