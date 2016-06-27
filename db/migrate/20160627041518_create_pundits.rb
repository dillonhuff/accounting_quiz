class CreatePundits < ActiveRecord::Migration
  def change
    create_table :pundits do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
