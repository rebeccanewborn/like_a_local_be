class ExcursionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :duration, :price, :city_id, :city_name
end
