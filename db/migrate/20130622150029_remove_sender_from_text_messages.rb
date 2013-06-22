class RemoveSenderFromTextMessages < ActiveRecord::Migration
  def up
    remove_column :text_messages, :sender
      end

  def down
    add_column :text_messages, :sender, :string
  end
end
