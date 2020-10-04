class AddCompletedToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :completed, :integer
  end
end
