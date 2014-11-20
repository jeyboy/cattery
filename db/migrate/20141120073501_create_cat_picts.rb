class CreateCatPicts < ActiveRecord::Migration
  def change
    create_table :cat_picts do |t|
      t.integer :cat_id
      t.text :pict
      t.boolean :main, default: true

      t.timestamps
    end
  end
end
