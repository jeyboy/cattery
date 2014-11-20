class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.integer :breed_id, null: false
      t.integer :color_id
      t.integer :title_id

      t.string :breeder
      t.string :owner
      t.string :name, null: false

      t.boolean :is_cat, null: false
      t.boolean :is_kitty, default: false

      t.integer :mother_id
      t.integer :father_id

      t.date :birthday

      t.timestamps
    end
  end
end
