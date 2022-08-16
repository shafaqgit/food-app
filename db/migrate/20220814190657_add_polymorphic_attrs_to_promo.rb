class AddPolymorphicAttrsToPromo < ActiveRecord::Migration[6.1]
  def change
    add_column :promos, :promoable_type, :string
    add_column :promos, :promoable_id, :integer
  end
end
