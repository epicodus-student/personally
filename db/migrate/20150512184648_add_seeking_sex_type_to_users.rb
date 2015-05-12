class AddSeekingSexTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :seeking_sex_type, :string
  end
end
