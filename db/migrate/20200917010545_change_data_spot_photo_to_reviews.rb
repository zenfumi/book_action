class ChangeDataSpotPhotoToReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :spot_photo, :string
  end
end
