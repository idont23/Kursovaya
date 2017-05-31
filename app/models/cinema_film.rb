class CinemaFilm < ActiveRecord::Base
  belongs_to :cinema
  belongs_to :film

  validates :cinema, :film, presence: true
end
