class AddFieldsToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :manager_id, :int
    add_column :admins, :fullname, :string
    add_column :admins, :cnic, :string
    add_column :admins, :address, :string
    add_column :admins, :salary, :int
    add_column :admins, :contact, :string
  end
end
