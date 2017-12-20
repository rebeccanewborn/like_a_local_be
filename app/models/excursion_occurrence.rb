class ExcursionOccurrence < ApplicationRecord
  belongs_to :excursion
  has_many :user_excursions
end
