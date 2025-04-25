class CreateCompany < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :tax_id
      t.string :adress
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :phone
      t.string :email
      t.string :subcription_status, default: "trial"
      t.datetime :trial_ends_at

      t.timestamps
      t.index :tax_id, unique: true
    end
  end
end
