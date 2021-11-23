class Activity < ApplicationRecord
  belongs_to :user, foreign_key: :author_id, class_name: 'User'
  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validates :categories, presence: true
  has_and_belongs_to_many :categories
end
