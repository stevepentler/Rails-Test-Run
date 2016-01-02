class Resort < ActiveRecord::Base
  has_many :lifts
  validates :name, presence: true, uniqueness: true
  validates :image_path, presence: true, uniqueness: true
  validates :trail_map_path, presence: true, uniqueness: true
  validates :average_season_accumulation, presence: true
  validates :rating, presence: true
  validates :review, presence: true
end
