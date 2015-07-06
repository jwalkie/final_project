class RemoveFoodIdToNutrients < ActiveRecord::Migration
  def change
    remove_column :nutrients, :food_id, :integer
  end
end
