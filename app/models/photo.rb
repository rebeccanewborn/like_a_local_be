class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :excursion
  has_attached_file :image,
    :path => ':id/:style/:filename',
    :storage => :cloudinary

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def user_name
    self.user.name
  end
end
