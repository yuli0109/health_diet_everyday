class User < ActiveRecord::Base
  has_secure_password
  has_many :records

  validates :email, presence: true, uniqueness: true
  validates :date_of_birth, presence: true
end
