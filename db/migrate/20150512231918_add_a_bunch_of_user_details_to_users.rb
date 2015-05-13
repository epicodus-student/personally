class AddABunchOfUserDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :height, :string
    add_column :users, :weight, :string
    add_column :users, :ethnicity, :string
    add_column :users, :drink?, :string
    add_column :users, :smoke?, :string
    add_column :users, :marital_status, :string
    add_column :users, :children?, :string
    add_column :users, :number_of_children, :string
    add_column :users, :want_children?, :string
    add_column :users, :occupation, :string
    add_column :users, :employment_status, :string
    add_column :users, :education, :string
    add_column :users, :religion, :string
    add_column :users, :religious_values, :string
    add_column :users, :profile_heading, :string
    add_column :users, :user_details, :text
    add_column :users, :user_desires, :text
  end
end
