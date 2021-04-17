class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
  validates :name, uniqueness: true
end
