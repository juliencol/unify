class AddIsPinnedToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :is_pinned, :boolean,  default: :false
  end
end
