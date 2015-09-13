class Patient < ActiveRecord::Base
  belongs_to :owner
end
