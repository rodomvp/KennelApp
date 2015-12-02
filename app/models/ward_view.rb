class WardView < ActiveRecord::Base
	has_many :patients
	has_many :wards
	has_many :runns

end
