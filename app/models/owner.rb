class Owner < ActiveRecord::Base
  has_many :patients
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  def name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    if search
      where('first_name ILIKE :search OR last_name ILIKE :search', search: "%#{search}%")
    else
      all
    end
  end
  
  def previous
    return Owner.last if self == Owner.first
    Owner.where(["id < ?", id]).last
  end

  def next
    return Owner.first if self == Owner.last 
    Owner.where(["id > ?", id]).first
  end
end
