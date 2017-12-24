class ExcursionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :duration, :price, :city_id, :city_name, :host_id, :host_name, :lat, :lng, :address, :created_at
  has_many :excursion_occurrences, serializer: ExcursionOccurrenceSerializer
end
