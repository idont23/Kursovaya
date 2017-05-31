class Film < ActiveRecord::Base
  has_many :film_participants, :dependent => :destroy
  has_many :participant, through: :film_participants

  has_many :film_genres
  has_many :genres, through: :film_genres

  has_many :cinema_films
  has_many :cinemas, through: :cinema_films

  validates :name, :duration, :country, :cinemacompany, presence: true
  validates :minage, inclusion: { in: 0..18 }
end
