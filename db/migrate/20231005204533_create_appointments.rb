class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: { to_table: :doctors }
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
