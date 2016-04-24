class Note < ActiveRecord::Base
  belongs_to :patient
  validates :patient_id, presence: true
  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true
end
