class Category < ApplicationRecord
  has_many :ideas, dependent: :destroy

  validates :name, presence: true
  validates :color, presence: true, format: {
    with: /\A#?(?:[A-F0-9]{3}|[A-F0-9]{6})\z/i,
    message: "must be a valid hex color"
  }
end
