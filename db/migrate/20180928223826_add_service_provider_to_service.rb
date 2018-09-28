class AddServiceProviderToService < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :service_provider, index:true  
  end
end
