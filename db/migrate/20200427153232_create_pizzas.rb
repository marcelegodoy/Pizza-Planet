class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.text :ingredients

      t.timestamps
    end
  end
end
