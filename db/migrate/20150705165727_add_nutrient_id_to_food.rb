class AddNutrientIdToFood < ActiveRecord::Migration
  def change
  	add_column :foods, :nutrient_id, :integer
  end
end
