class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.text :description
      t.datetime :appointment

      t.timestamps
    end
  end
end
