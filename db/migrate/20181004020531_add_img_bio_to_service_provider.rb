class AddImgBioToServiceProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :service_providers, :img, :string
    add_column :service_providers, :bio, :text
  end
end
