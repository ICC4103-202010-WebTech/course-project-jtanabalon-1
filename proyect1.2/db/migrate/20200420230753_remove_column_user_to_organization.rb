class RemoveColumnUserToOrganization < ActiveRecord::Migration[6.0]
  def change
    remove_column :organizations, :user_id
    remove_column :organizations, :admin_id
  end
end
