class RemoveTotalBaseColumn < ActiveRecord::Migration
  def change
    remove_column :resorts, :total_base
  end
end
