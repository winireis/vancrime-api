class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :neighbourhood
      t.string :block
      t.float :x
      t.float :y
      t.float :latitude
      t.float :longitude
    end
    add_index :sites, :neighbourhood
    add_index :sites, :block
  end
end
