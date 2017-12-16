class AddLastNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Last_name, :string
  end
end
