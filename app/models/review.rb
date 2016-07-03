class Review < ActiveRecord::Base
  belongs_to :prediction
  validates :prediction_id, presence: true
  validates :rating, presence: true, :inclusion => 0..100
  validates :content, presence: true, length: { maximum:10000 }
end
