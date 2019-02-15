class CreateCrimes < ActiveRecord::Migration[5.2]
  def change
    create_table :crimes do |t|
      t.references :datestamps
      t.references :timestamps
      t.references :offence
      t.references :site
      t.integer :counter
    end
  end
end
