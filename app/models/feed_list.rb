class FeedList < ActiveRecord::Base
	has_many :patients

  after_create :add_patients
  private
    def add_patients
        Patient.all.each do |p|
          if p.NPO == false && p.stays.length > 0
        	self.patients << p
          end
      	end
    end

end
