class Ward < ActiveRecord::Base
  has_many :runns, dependent: :destroy
  
  def previous
    return Ward.last if self == Ward.first
    Ward.where(["id < ?", id]).last
  end

  def next
    return Ward.first if self == Ward.last 
    Ward.where(["id > ?", id]).first
  end

end
