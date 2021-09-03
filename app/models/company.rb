class Company < ApplicationRecord
  belongs_to :user

  validates :company_name, presence:true
  validates :explanation, presence: true
  validates :date, presence: true
end
