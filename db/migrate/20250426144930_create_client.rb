class CreateClient < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name, null: false
      t.string :tax_id
      t.string :email, null: false
      t.string :phone
      t.string :adress
      t.string :city
      t.string :postal_code
      t.string :country
      t.text :notes
      t.timestamps

      t.index :tax_id, unique: true
    end
  end
end
