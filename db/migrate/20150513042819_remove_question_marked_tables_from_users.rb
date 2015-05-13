class RemoveQuestionMarkedTablesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :drink?, :string
    remove_column :users, :smoke?, :string
    remove_column :users, :children?, :string
    remove_column :users, :want_children?, :string

    add_column :users, :drink, :string
    add_column :users, :smoke, :string
    add_column :users, :children, :string
    add_column :users, :want_children, :string

  end
end
