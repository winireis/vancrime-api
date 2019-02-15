class CreateDatestamps < ActiveRecord::Migration[5.2]
  def change
    create_table :datestamps do |t|
      t.date :fulldate
      t.integer :year
      t.integer :month
      t.integer :weekday
      t.integer :day
    end
    add_index :datestamps, :fulldate
    add_index :datestamps, :year
    add_index :datestamps, :month
    add_index :datestamps, :weekday
    add_index :datestamps, :day
  end
end
