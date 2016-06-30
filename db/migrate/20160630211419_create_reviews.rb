class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :prediction_id
      t.integer :rating
      t.string :content

      t.timestamps null: false
    end
  end
end
