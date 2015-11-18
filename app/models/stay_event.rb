class StayEvent < ActiveRecord::Base
  belongs_to :stay

  def scheduled?
    scheduled_time_stamp.present?
  end

  def time_left
    if scheduled?
      scheduled_time_stamp - DateTime.now
    end
  end
end
