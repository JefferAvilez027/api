class AddLatitudeToStores < ActiveRecord::Migration[7.1]
  def change
    add_column :stores, :latitude, :float
  end
end
