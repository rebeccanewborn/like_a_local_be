class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :excursions, :hosted_excursions, :created_at
end
