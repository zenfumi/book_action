class AddUserIdToBooks < ActiveRecord::Migration[6.0]
  def up
    Book.destroy_all
    add_reference :books, :user, null: false, index: true
  end

  def down
    remove_reference :books, :user, index: true
  end
end
