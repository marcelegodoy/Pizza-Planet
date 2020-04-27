class CreatePizzaCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_categories do |t|
      t.references :pizza, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
