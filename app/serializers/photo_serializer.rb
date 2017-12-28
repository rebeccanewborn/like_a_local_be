class PhotoSerializer < ActiveModel::Serializer
  attributes :image, :user_id, :user_name
end
