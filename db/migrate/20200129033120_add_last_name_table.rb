class AddLastNameTable < ActiveRecord::Migration[5.2]
  def change
    create_table :last_name do |t|
      t.string :name
      t.integer :gender

      t.timestamps
    end
  end
end
