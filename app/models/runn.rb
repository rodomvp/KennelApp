class Runn < ActiveRecord::Base
  belongs_to :ward
  belongs_to :stays


  def returnIDs
  	runIDs = []
  	self.all.each do |f|
  		runIDs.push(f.id)
  	end
  	return runIDs
  end

end
