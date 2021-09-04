class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :company_name, null: false
      t.text :explanation, null: false
      t.date :date, null: false
      t.references :user, null: false, foreign_key: true
      t.integer :intern_day_id, null: false
      t.text :url
      t.timestamps
    end
  end
end
