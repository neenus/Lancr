class AddIsBookedToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :is_booked, :boolean
  end
end
