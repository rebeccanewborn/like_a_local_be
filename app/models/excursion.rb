class Excursion < ApplicationRecord
  belongs_to :city
  belongs_to :host, class_name: "User"
  has_many :excursion_occurrences, dependent: :destroy

  def city_name
    self.city.name
  end

  def host_name
    self.host.name
  end
end
