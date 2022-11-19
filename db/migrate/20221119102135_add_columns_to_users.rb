class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :is_org, :boolean
    add_column :users, :address, :text
    add_column :users, :description, :text
    add_column :users, :org_name, :string
  end
end
