class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :image_path
      t.string :trail_map_path
      t.integer :average_season_accumulation
      t.integer :total_accumulation
      t.integer :total_base
      t.integer :rating
      t.string :review

      t.timestamps null: false
    end
  end
end
