class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id, message: "Title has already been added to the list" }
  validates :comment, length: {minimum: 7}
end
