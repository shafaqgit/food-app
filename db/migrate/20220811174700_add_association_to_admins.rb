class AddAssociationToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :admins, :admins, column: :manager_id
  end
end
