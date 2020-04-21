class AddColumnOrganizationInAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :organization_id, :integer
  end
end
