class ChangeDataPurposeToReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :purpose, :string
  end
end
