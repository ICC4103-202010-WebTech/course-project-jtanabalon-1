class AddColumnOrganizationInAdminsReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :admins, :organizations, index: true
  end
end
