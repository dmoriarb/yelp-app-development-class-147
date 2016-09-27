class AddCityIdToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :city_id, :integer
  end
end
