class Category < ApplicationRecord
   validates :title, presence: true, uniqueness: true

   has_many :pizza_categories, dependent: :destroy
   has_many :products, through: :pizza_categories
end
