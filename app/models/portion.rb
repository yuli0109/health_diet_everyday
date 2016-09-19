class Portion < ActiveRecord::Base
  belongs_to :food
  belongs_to :record
end
