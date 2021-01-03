class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :purpose, null :false
      t.text :memo, null :false
      t.string :plan_now, null :false
      t.string :plan_future, null :false
      t.binary :spot_photo

      t.timestamps
    end
  end
end
