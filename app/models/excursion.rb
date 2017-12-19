class Excursion < ApplicationRecord
  belongs_to :city
  belongs_to :host, class_name: "User"
  has_many :user_excursions
  has_many :users, through: :user_excursions

  def city_name
    self.city.name
  end

  def host_name
    self.host.name
  end
end
