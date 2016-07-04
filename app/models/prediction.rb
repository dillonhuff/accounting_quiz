class Prediction < ActiveRecord::Base
  belongs_to :pundit

  has_many :reviews

  has_many :prediction_taggings
  has_many :tags, through: :prediction_taggings

  validates :pundit_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 }

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end  

end
