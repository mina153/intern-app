class Company < ApplicationRecord
  belongs_to :user

  validates :company_name, presence:true
  validates :explanation, presence: true
  validates :date, presence: true

  with_options numericality:{other_than: 1, message: "can't be blank"} do
    validates :date
  end

end
