class AddUserIdAgainToPoliticianRequests < ActiveRecord::Migration
  def change
    remove_column :politician_requests, :user_id

  end
end
