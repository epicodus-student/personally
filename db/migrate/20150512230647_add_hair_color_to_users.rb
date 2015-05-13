class AddHairColorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hair_color, :string
  end
end
