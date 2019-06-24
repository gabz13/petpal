class AddColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :terms_and_conditions, :boolean
  end
end
