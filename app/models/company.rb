class Company < ApplicationRecord
  belongs_to :user

  validates :company_name, presence:true
  validates :explanation, presence: true
  validates :date, presence: true
  validates :intern_day_id, numericality: { other_than: 1 , message: "can't be blank"}

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :intern_day
end
