class AddPaitensIdToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :paitents_id, :integer
  end
end
