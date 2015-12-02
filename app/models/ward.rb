class Ward < ActiveRecord::Base
  has_many :runns
  belongs_to :stay
end
