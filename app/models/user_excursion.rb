class UserExcursion < ApplicationRecord
  belongs_to :user
  belongs_to :excursion_occurrence
  validates :excursion_occurrence, uniqueness: {scope: :user, message: "You've already signed up for this excursion!"}
end
