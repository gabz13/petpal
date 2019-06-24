class RemoveColumnBookings < ActiveRecord::Migration[5.2]
  def change
      remove_column :bookings, :terms_and_conditions

  end
end
