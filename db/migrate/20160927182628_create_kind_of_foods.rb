class CreateKindOfFoods < ActiveRecord::Migration
  def change
    create_table :kind_of_foods do |t|
      t.integer :tags_id
      t.integer :restaurants_id

      t.timestamps

    end
  end
end
