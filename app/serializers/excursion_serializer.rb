class ExcursionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :duration, :price, :city_id, :city_name, :host_id, :lat, :lng, :address, :created_at
  has_many :excursion_occurrences, serializer: ExcursionOccurrenceSerializer
  has_many :host_photos, serializer: PhotoSerializer
  has_many :user_photos, serializer: PhotoSerializer
  has_many :reviews, serializer: ReviewSerializer
  belongs_to :host, serializer: HostAvatarSerializer
end
