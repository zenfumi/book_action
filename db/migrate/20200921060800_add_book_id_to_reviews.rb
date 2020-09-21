class AddBookIdToReviews < ActiveRecord::Migration[6.0]
  def up
    execute 'DELETE FROM reviews;'
    add_reference :reviews, :book, null:false, index:true, foreign_key: true
  end

  def down
    remove_reference :reviews, :book, index: true
  end
end
