class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :body
      t.integer :restaurant_id
      t.integer :customer_id

      t.timestamps

    end
  end
end
