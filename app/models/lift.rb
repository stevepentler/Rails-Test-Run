class Lift < ActiveRecord::Base
  belongs_to :resort
  validates :name, presence: true, uniqueness: true
  validates :seats, presence: true
end
