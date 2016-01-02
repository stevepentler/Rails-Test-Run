require 'rails_helper'

RSpec.feature "User submits a new lift" do
  scenario "they see the page for the individual individual lift" do
    resort = create(:resort)

    lift_name = "Excelerator"
    lift_seats = 4

    visit resort_path(resort)
    click_on "Add Lift"
    fill_in "lift_name", with: lift_name
    fill_in "lift_seats", with: lift_seats
    click_on "Create Lift"

    expect(page).to have_content lift_name
    # expect(page).to have_link resort.name, href: resort_path(resort)
  end
end