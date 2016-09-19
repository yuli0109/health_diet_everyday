class Food < ActiveRecord::Base
  has_many :portions
  has_many :records, through: :portions

  validates :name, presence: true, uniqueness: true
end
