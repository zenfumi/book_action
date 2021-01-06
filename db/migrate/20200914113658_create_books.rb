class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :image
      t.string :title, null: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
