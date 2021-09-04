class RemoveMyPasswordFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :my_password, :string
  end
end
