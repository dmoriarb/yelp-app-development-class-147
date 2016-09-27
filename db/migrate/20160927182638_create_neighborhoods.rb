class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :neighborhood_name
      t.integer :city_id

      t.timestamps

    end
  end
end
