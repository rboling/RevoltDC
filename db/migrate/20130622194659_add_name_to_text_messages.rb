class AddNameToTextMessages < ActiveRecord::Migration
  def change
    add_column :text_messages, :name, :string

  end
end
