class Excursion < ApplicationRecord
  belongs_to :city

  def city_name
    self.city.name
  end
end
