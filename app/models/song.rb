class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :artist_name, presence: true
  validates :released, inclusion: { in: [true, false] }
end
