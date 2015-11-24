class Runn < ActiveRecord::Base
  belongs_to :ward
  has_many :stays
end
