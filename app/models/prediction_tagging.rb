class PredictionTagging < ActiveRecord::Base
  belongs_to :prediction
  belongs_to :tag
end
