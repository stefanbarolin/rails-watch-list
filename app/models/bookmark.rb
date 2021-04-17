class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :list, :movie, presence: true
  validates :list, uniqueness: { scope: :movie, message: 'This movie is registered with this list' }
end
