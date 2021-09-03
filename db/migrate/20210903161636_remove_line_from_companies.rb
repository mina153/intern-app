class RemoveLineFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :line, :text
  end
end
