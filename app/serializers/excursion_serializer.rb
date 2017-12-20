class ExcursionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :duration, :price, :city_id, :city_name, :host_id, :host_name, :excursion_occurrences, :created_at
end
