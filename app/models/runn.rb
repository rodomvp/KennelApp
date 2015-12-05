class Runn < ActiveRecord::Base

  belongs_to :ward
  has_many :stays

  def self.get_empty_runns
  	empty_runns = [] 
  	Runn.all.each do |runn|
  		if runn.occupied == true
  			next
  		else
  			empty_runns.push(runn)
  		end
  	end
  	return empty_runns
  end

end
