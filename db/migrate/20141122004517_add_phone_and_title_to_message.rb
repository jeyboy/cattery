class AddPhoneAndTitleToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :phone, :string
    add_column :messages, :title, :string
  end
end
