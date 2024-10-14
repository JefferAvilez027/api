
class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
