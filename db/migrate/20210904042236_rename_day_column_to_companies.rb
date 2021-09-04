class RenameDayColumnToCompanies < ActiveRecord::Migration[6.0]
  def change
    rename_column :companies, :day, :day_id
  end
end
