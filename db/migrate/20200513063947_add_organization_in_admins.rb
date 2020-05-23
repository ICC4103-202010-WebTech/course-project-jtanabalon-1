class AddOrganizationInAdmins < ActiveRecord::Migration[6.0]
  def change
    add_reference :admins, :organization, index: true, foreign_key: true
  end
end
