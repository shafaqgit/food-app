class CreateSuperAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :super_admins do |t|
      t.string :name
      t.string :cnic
      t.string :address

      t.timestamps
    end
  end
end
