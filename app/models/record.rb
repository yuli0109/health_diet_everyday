class Record < ActiveRecord::Base
  belongs_to :user
  has_many :portions, dependent: :destroy
  has_many :foods, through: :portions

  validates :date_create, presence: true
end
