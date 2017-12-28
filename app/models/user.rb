class User < ApplicationRecord
  has_secure_password
  has_many :user_excursions
  has_many :excursion_occurrences, through: :user_excursions
  has_many :hosted_excursions, class_name: "Excursion", foreign_key: :host_id
  has_attached_file :avatar,
    :path => ':id/:style/:filename',
    :storage => :cloudinary,
    :cloudinary_upload_options => {
        :default => {
            :tags => [ 'Avatar' ],
            :transformation => [
                { :crop => 'thumb', :gravity => 'face' }
            ]
        }
    }

  validates :email, presence: true, uniqueness: true
  validate :valid_email_address
  validates :password, presence: true, length: { minimum: 5 }
  validates :name, :bio, presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def valid_email_address
    if !self.email.include?('@')
      errors.add(:email, "must be a valid email address")
    end
  end

  def token
    JWT.encode({email: self.email}, ENV['secret'], ENV['algo'])
  end
end
