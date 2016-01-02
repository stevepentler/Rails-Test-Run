FactoryGirl.define do 
  factory :resort do
    name        "Steamboat"
    image_path  "http://www.gsoski.org/article_files/images/steamboat.gif"
    trail_map_path  "http://ww1.steamboat.com/web/maps/SteamboatTrails.pdf"
    average_season_accumulation  349
    rating  9
    review  "Steamboat rocks!"
  end

  factory :lift do 
    name "Excelerator"
    seats 6
  end
end