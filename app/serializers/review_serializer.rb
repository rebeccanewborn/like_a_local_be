class ReviewSerializer < ActiveModel::Serializer
  attributes :excursion_rating, :excursion_review, :host_rating, :host_review, :user_name, :posted, :created_at
end
