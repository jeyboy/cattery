class CreateContentPicts < ActiveRecord::Migration
  def change
    create_table :content_picts do |t|
      t.integer :content_id
      t.text :pict

      t.timestamps
    end
  end
end
