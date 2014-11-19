class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :name
      t.text :body

      t.timestamps
    end

    add_index :static_pages, :name, unique: true
  end
end
