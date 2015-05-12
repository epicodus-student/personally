class AddAgreeToTermsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :agree_to_terms, :string
  end
end
