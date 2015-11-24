class Patient < ActiveRecord::Base
  belongs_to :owner
  has_many :stays
end
