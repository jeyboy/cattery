class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :content_type
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
