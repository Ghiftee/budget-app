class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :activities

  validates :name, :icon, presence: true

  def total_amount
    activities.sum(:amount)
  end
end
