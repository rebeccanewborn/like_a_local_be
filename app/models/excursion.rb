class Excursion < ApplicationRecord
  belongs_to :city
  belongs_to :host, class_name: "User"
  has_many :excursion_occurrences, dependent: :destroy
  has_many :photos

  def city_name
    self.city.name
  end

  def host_name
    self.host.name
  end

  def host_photos
    self.photos.select { |photo| photo.user_id == self.host_id }
  end

  def user_photos
    self.photos.select { |photo| photo.user_id != self.host_id }
  end
end
