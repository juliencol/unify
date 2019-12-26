class AddApplicationsOpenToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :applications_open, :boolean
  end
end
