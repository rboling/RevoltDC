class CreateTextMessages < ActiveRecord::Migration
  def change
    create_table :text_messages do |t|
      t.text :content
      t.string :sender
      t.string :receiver

      t.timestamps
    end
  end
end
