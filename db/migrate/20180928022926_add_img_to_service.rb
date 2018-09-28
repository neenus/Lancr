class AddImgToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :img, :string
  end
end
