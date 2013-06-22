class AddAnotherIdToPoliticianRequests < ActiveRecord::Migration
  def change
    add_column :politician_requests, :user_id, :integer

  end
end
