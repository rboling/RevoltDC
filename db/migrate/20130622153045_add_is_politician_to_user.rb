class AddIsPoliticianToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_politician, :bool

  end
end
