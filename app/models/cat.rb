class Cat < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :gender, inclusion: { in: %w[male female], message: "must be male or female" }
end
