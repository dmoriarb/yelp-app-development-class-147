class AddPasswordToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :password, :string
  end
end
