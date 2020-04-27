class Pizza < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true

  has_many :pizza_categories, dependent: :destroy
  has_many :categories, through: :pizza_categories
end
