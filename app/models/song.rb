class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: {scope: :artist_name}
  validates :title, uniqueness: {scope: :release_year}
  validates :artist_name, presence: true
  validates :released, inclusion: { in: [true, false] }
  #validates :release_year, presence: true  if: :released?
  validates :release_year, numericality: { 
    presence: true, if: :released?, 
    less_than_or_equal_to: Date.current.year
  }
  

end

#if the :relesed is true, :release_year must be less_than_or_equal_to Date.curent.year.
#if the :released is false, :release_year must not be blank.
