class Review < ApplicationRecord
  belongs_to :user
  belongs_to :excursion

  def user_name
    self.user.name
  end

  def posted
    self.created_at.strftime("%B%e, %Y")
  end
end
