class CreateNutrientUserJoinTable < ActiveRecord::Migration
  def change
    create_join_table :nutrients, :users do |t|
      # t.index [:nutrient_id, :user_id]
      # t.index [:user_id, :nutrient_id]
    end
  end
end
