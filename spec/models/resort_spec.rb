require 'rails_helper'

  RSpec.describe Resort, type: :model do
    context "validations" do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_uniqueness_of(:name) }
      it { is_expected.to validate_presence_of(:image_path) }
      it { is_expected.to validate_uniqueness_of(:image_path) }
      it { is_expected.to validate_presence_of(:trail_map_path) }
      it { is_expected.to validate_uniqueness_of(:trail_map_path) }
      it { is_expected.to validate_presence_of(:total_accumulation) }
      it { is_expected.to validate_presence_of(:average_season_accumulation) }
      it { is_expected.to validate_presence_of(:total_base) }
      it { is_expected.to validate_presence_of(:rating) }
      it { is_expected.to validate_presence_of(:review) }
    end
  end

