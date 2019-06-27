class Review < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :content, length: { minimum: 20 }
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
