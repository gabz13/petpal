class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :terms_and_conditions, acceptance: true
end
