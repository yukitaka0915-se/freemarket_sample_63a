class AddAncestryToShippingways < ActiveRecord::Migration[5.2]
  def change
    add_column :shippingways, :ancestry, :string, null: true
    add_index :shippingways, :ancestry
  end
end
