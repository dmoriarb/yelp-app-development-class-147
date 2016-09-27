class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :review_id
      t.string :picture

      t.timestamps

    end
  end
end
