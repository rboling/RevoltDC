class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :state
      t.string :city
      t.integer :district
      t.string :office
      t.string :phone_number

      t.timestamps
    end
  end
end
