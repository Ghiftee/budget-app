class Category < ApplicationRecord
  validates :name, :icon, presence: true

  belongs_to :user
  # has_and_belongs_to_many :transactions
  has_and_belongs_to_many :user, foreign_key: 'category_id', class_name: 'Transaction'

  def total_amount
    transactions.sum('amount')
  end
end
