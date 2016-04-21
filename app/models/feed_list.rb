class FeedList < ActiveRecord::Base
	has_many :patients

  after_create :add_patients
  private
    def add_patients
      Patient.all.each do |p|
        self.patients << p if p.has_current_stay?
      end
    end
end

#lol
