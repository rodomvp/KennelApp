class FeedList < ActiveRecord::Base
	has_many :patients

  after_create :add_patients
  private
    def add_patients
        Patient.all.each do |p|
          if p.stays.last.is_current?
        	self.patients << p
          end
      	end
    end

end
