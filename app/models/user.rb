class User < ApplicationRecord
  has_secure_password
  has_many :excursions, through: :user_excursions

  def token
    JWT.encode({email: self.email}, ENV['secret'], ENV['algo'])
  end
end
