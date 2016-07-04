class CreatePredictionTaggings < ActiveRecord::Migration
  def change
    create_table :prediction_taggings do |t|
      t.belongs_to :prediction, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
