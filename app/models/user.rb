class User < ApplicationRecord
  has_secure_password
  has_many :excursions, through: :user_excursions

  validates :email, presence: true, uniqueness: true
  validate :valid_email_address
  validates :password, presence: true, length: { minimum: 5 }
  validates :name, :bio, presence: true

  def valid_email_address
    if !self.email.include?('@')
      errors.add(:email, "must be a valid email address")
    end
  end

  def token
    JWT.encode({email: self.email}, ENV['secret'], ENV['algo'])
  end
end
