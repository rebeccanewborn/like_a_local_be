class ExcursionOccurrence < ApplicationRecord
  belongs_to :excursion
  has_many :user_excursions
  has_many :users, through: :user_excursions
end
