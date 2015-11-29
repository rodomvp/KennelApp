class Patient < ActiveRecord::Base
  belongs_to :owner
  belongs_to :feed_list
  validates :name, presence: true, length: { maximum: 50 }
  validates :feed_time, :inclusion => { :in => %w(AM, PM, BID),
  	:message => "not a valid feeding time" }
  has_many :stays
end
