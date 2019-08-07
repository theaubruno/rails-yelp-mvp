class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
