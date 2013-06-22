class AddPoliticianToPoliticianRequests < ActiveRecord::Migration
  def change
    add_column :politician_requests, :politician, :string

  end
end
