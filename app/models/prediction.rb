class Prediction < ActiveRecord::Base
  belongs_to :pundit
  validates :pundit_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
end
