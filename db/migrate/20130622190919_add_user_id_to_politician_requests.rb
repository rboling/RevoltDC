class AddUserIdToPoliticianRequests < ActiveRecord::Migration
  def change
    add_column :politician_requests, :user_id, :string

    add_column :politician_requests, :integer, :string

  end
end
