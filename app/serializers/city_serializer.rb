class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url
  has_many :excursions, serializer: ExcursionIndexSerializer
end
