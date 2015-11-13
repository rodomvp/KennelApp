class Owner < ActiveRecord::Base
  has_many :patients
end
