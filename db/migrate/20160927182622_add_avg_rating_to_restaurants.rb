class AddAvgRatingToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :avg_rating, :string
  end
end
