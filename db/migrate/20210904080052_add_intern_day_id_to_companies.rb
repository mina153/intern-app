class AddInternDayIdToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :intern_day_id, :integer
  end
end
