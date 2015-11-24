class Patient < ActiveRecord::Base
  belongs_to :owner
  validates :name, presence: true, length: { maximum: 50 }
  has_many :stays
end
