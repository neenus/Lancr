class CreateServiceProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :service_providers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
