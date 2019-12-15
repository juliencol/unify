class CreateUserAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_associations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :association, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
