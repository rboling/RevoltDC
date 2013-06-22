class AddEmailToUserSessions < ActiveRecord::Migration
  def change
    add_column :user_sessions, :email, :string

  end
end
