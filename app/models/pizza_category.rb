class PizzaCategory < ApplicationRecord
  belongs_to :pizza
  belongs_to :category
end
