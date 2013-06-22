class AddEmailToPoliticians < ActiveRecord::Migration
  def change
    add_column :politicians, :email, :string

  end
end
