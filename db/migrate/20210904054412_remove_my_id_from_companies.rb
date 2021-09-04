class RemoveMyIdFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :my_id, :string
  end
end
