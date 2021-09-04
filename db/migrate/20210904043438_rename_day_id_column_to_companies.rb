class RenameDayIdColumnToCompanies < ActiveRecord::Migration[6.0]
  def change
    rename_column :companies, :day_id, :intern_day_id
  end
end
