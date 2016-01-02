class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      t.string :seats
      t.references :resort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
