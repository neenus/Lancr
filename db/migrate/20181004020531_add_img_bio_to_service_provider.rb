class AddImgBioToServiceProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :service_providers, :pic, :string
    add_column :service_providers, :bio, :text
  end
end
