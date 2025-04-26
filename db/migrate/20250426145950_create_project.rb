class CreateProject < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.references :company, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :project_manager, null: false, foreign_key: { to_table: :users }
      t.string :name, null: false
      t.text :description
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :country
      t.date :start_date
      t.date :target_end_date
      t.date :actual_end_date
      t.integer :status, default: 0
      t.decimal :budget, precision: 15, scale: 2
      t.string :internal_id

      t.timestamps
    end
  end
end
