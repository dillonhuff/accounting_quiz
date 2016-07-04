class Tag < ActiveRecord::Base
  has_many :prediction_taggings
  has_many :predictions, through: :prediction_taggings
end
