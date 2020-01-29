class AddFirstNameTable < ActiveRecord::Migration[5.2]
  def change
    create_table :first_name do |t|
      t.string :name
      t.integer :gender

      t.timestamps
    end
  end
end
