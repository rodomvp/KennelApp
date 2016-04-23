class Runn < ActiveRecord::Base

  belongs_to :ward
  has_many :stays
  default_scope { order('ident ASC') }

  def current_stay
    stays = Stay.where(runn: self) 
    stays.last
  end

  def current_patient
    stay = current_stay
    if stay.nil?
      return nil
    else
      return stay.patient
    end
  end

  def current_patient_name
    return nil if self.current_patient.nil?
    return self.current_patient.name
  end

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

  def self.get_occupied_runns
    occupied_runns = []
    Runn.all.each do |runn|
      if runn.occupied == true
        occupied_runns.push(runn)
      else
        next
      end
    end
    return occupied_runns
  end

  def sibling_runns
    return ward.runns
  end

  def previous
    return sibling_runns.last if self == sibling_runns.first
    sibling_runns.where(["id < ?", id]).last
  end

  def next
    return sibling_runns.first if self == sibling_runns.last 
    sibling_runns.where(["id > ?", id]).first
  end

end
