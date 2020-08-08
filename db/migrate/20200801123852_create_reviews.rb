class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :purpose
      t.text :memo
      t.string :plan_now
      t.string :plan_future
      t.binary :spot_photo

      t.timestamps
    end
  end
end
