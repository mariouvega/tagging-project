class RemoveTable < ActiveRecord::Migration[5.1]
  def change
       drop_table :add_column_to_users
  end
end
