class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.text :content
      t.integer :pundit_id

      t.timestamps null: false
    end
  end
end
