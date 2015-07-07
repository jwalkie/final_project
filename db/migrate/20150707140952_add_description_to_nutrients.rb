class AddDescriptionToNutrients < ActiveRecord::Migration
  def change
    add_column :nutrients, :description, :text
  end
end
