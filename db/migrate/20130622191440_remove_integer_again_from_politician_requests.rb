class RemoveIntegerAgainFromPoliticianRequests < ActiveRecord::Migration
  def up
  	remove_column :politician_requests, :integer
  end

  def down
  end
end
