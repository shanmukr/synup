class AddUserIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_id, :string
  end
end
