class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :excursions
end
