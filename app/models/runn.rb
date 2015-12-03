class Runn < ActiveRecord::Base

  belongs_to :ward
  has_many :stays

  def self.getEmptyRunns
  	emptyRuns = [] 
  	Runn.all.each do |f|
  		if f.occupied == true
  			next
  		else
  			emptyRuns.push(f.id)
  		end
  	end
  	return emptyRuns
  end

end
