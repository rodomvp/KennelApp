class Stay < ActiveRecord::Base
  belongs_to :patient
  belongs_to :runn
end
