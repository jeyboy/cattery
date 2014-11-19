class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.integer :breed_id, null: false
      t.string :color
      t.string :breeder
      t.string :owner
      t.string :name

      t.boolean :gender

      t.integer :mother_id
      t.integer :father_id

      t.date :birthday

      t.timestamps
    end
  end
end
