class CreateOffences < ActiveRecord::Migration[5.2]
  def change
    create_table :offences do |t|
      t.string :name
      t.string :description
    end
    add_index :offences, :name
  end
end
