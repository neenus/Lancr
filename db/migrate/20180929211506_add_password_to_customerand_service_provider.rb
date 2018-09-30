class AddPasswordToCustomerandServiceProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :password_digest, :string
    add_column :service_providers, :password_digest, :string
  end
end
