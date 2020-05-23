class RemoveUsersFromOrganizations < ActiveRecord::Migration[6.0]
  def change
    remove_column :organizations, :users_id
  end
end
