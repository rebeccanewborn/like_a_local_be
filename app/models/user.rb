class User < ApplicationRecord
  has_secure_password
  has_many :user_excursions
  has_many :excursion_occurrences, through: :user_excursions
  has_many :hosted_excursions, class_name: "Excursion", foreign_key: :host_id

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
