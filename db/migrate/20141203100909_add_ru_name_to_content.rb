class AddRuNameToContent < ActiveRecord::Migration
  def change
    add_column :contents, :ru_name, :string
  end
end
