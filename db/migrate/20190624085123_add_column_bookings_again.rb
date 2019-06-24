class AddColumnBookingsAgain < ActiveRecord::Migration[5.2]
  def change

      add_column :bookings, :terms_and_conditions, :boolean, default: false

  end
end
