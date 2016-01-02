require 'rails_helper'

RSpec.feature "User submits a new resort" do
  scenario "they see the page for the individual resort" do
    resort_name       = "Steamboat"
    resort_image_path = "http://www.gsoski.org/article_files/images/steamboat.gif"
    resort_trail_map_path = "http://ww1.steamboat.com/web/maps/SteamboatTrails.pdf"
    resort_average_season_accumulation = 349
    resort_total_accumulation = 165
    resort_total_base = 47 
    resort_rating = 9
    resort_review = "Steamboat rocks!"
    
    visit resorts_path
    click_on "New Resort"
    
    fill_in "resort_name", with: resort_name
    fill_in "resort_image_path", with: resort_image_path
    fill_in "resort_trail_map_path", with: resort_trail_map_path
    fill_in "resort_average_season_accumulation", with: resort_average_season_accumulation
    fill_in "resort_total_accumulation", with: resort_total_accumulation
    fill_in "resort_total_base", with: resort_total_base
    fill_in "resort_rating", with: resort_rating
    fill_in "resort_review", with: resort_review
    
    click_on "Create Resort"

    expect(page).to have_css("img[src=\"#{resort_image_path}\"]")
  end

end