class Review < ApplicationRecord
  belongs_to :user
  belongs_to :excursion

  def user_name
    self.user.name
  end
end
