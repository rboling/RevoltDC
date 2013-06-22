class CreatePoliticianRequests < ActiveRecord::Migration
  def change
    create_table :politician_requests do |t|
      t.text :request
      t.string :email

      t.timestamps
    end
  end
end
