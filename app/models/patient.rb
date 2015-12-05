class Patient < ActiveRecord::Base
  belongs_to :owner
  has_many :stays
  belongs_to :feed_list
  validates :name, presence: true, length: { maximum: 50 }

  def has_current_stay?
    return false if stays.empty?
    return stays.last.is_current?
  end
end
