class AddColumnsToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :location, :string
    add_column :appointments, :date, :date
  end
end
