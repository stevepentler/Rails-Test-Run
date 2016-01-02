class RemoveTotalAccumulationColumn < ActiveRecord::Migration
  def change
    remove_column :resorts, :total_accumulation
  end
end
