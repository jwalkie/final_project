class CreateNutrients < ActiveRecord::Migration
  def change
    create_table :nutrients do |t|
      t.string :name
      t.text :information

      t.timestamps null: false
    end
  end
end
