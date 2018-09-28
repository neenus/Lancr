class AddPriceColumnToService < ActiveRecord::Migration[5.2]
  def change
     add_column :services, :price, :integer
     add_column :services, :img, :string
  end
end
