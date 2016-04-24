class Patient < ActiveRecord::Base
  belongs_to :owner
  has_many :stays, dependent: :destroy
  belongs_to :feed_list
  validates :name, 
    presence: true, 
    length: { maximum: 50 }, 
    uniqueness: {case_sensitive: false}
  mount_uploader :image, ImageUploader
  def current_stay
    return stays.last if has_current_stay? 
  end

  def current_runn
    return current_stay.runn if has_current_stay? 
  end

  def self.search(search)
    if search
      where('name ILIKE ?', "%#{search}%")
    else
      all
    end
  end

  def previous
    return Patient.last if self == Patient.first
    Patient.where(["id < ?", id]).last
  end

  def next
    return Patient.first if self == Patient.last 
    Patient.where(["id > ?", id]).first
  end

end
