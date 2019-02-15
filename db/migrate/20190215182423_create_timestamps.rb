class CreateTimestamps < ActiveRecord::Migration[5.2]
  def change
    create_table :timestamps do |t|
      t.string :fulltime
      t.integer :hour
      t.integer :minute
    end
    add_index :timestamps, :fulltime
    add_index :timestamps, :hour
    add_index :timestamps, :minute
  end
end
