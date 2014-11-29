class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :content_type_id
      t.string :integer
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
