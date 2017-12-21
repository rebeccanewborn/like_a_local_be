class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :excursion_occurrences, :hosted_excursions, :created_at
end
