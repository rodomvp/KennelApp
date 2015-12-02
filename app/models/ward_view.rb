class WardView < ActiveRecord::Base
  ## TODO: need gracefully destroy this class
	has_many :patients
	has_many :wards
	has_many :runns
end
