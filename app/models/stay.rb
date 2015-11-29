class Stay < ActiveRecord::Base
  belongs_to :patient
  belongs_to :runn

  after_create :update
  private
  	def update
  		self.check_in_dt = Time.new  		
  	end
end
