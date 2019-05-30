class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail && :ingredient, uniqueness: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :description, presence: true
end
