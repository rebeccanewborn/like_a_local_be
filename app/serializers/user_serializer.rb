class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :excursion_occurrences, :hosted_excursions, :avatar, :created_at
end
