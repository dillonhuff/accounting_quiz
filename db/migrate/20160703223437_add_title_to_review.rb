class AddTitleToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :title, :string
    Review.all.each do |review|
      num_chars = [review.content.size, 30].min
      review.update_attributes(:title => review.content[0..num_chars] + "...")
    end
  end
end
