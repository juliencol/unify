class AddDiscordUrlToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :discord_url, :string
  end
end
