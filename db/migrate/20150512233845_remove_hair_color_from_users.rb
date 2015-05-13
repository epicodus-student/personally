class RemoveHairColorFromUsers < ActiveRecord::Migration
  def change
  remove_column :users, :hair_color, :string
  end
end
