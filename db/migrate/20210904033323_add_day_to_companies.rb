class AddDayToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :day, :integer
  end
end
