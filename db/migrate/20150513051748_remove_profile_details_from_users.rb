class RemoveProfileDetailsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_details, :string
    remove_column :users, :user_desires, :string
    add_column :users, :user_profile, :string
  end
end
