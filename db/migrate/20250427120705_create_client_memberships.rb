class CreateClientMemberships < ActiveRecord::Migration[7.1]
  def change
    create_table :client_memberships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.string :role
      t.timestamps
    end
    add_index :client_memberships, [:user_id, :client_id], unique: true
  end
end
