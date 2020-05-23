class UpdateColumnOrganizationInAdmins < ActiveRecord::Migration[6.0]
  def change
    remove_column :admins, :organization_id
  end
end
