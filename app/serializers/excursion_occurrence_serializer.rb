class ExcursionOccurrenceSerializer < ActiveModel::Serializer
  attributes :id, :time, :excursion_id, :users
end
