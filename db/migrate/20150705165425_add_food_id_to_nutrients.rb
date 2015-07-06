class AddFoodIdToNutrients < ActiveRecord::Migration
  def change
  	add_column :nutrients, :food_id, :integer
  end
end
