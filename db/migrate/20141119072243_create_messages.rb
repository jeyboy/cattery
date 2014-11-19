class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.text :message_text, null: false

      t.timestamps
    end
  end
end
