class Category < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :entities, dependent: :destroy
  has_one_attached :icon, dependent: :destroy
end
