class Category < ApplicationRecord
  validates :name, :icon, presence: true

  belongs_to :user
  has_and_belongs_to_many :activities

  def total_amount
    activities.sum(:amount)
  end
end
