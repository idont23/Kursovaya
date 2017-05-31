class FilmGenre < ActiveRecord::Base
  belongs_to :film
  belongs_to :genre

  validates :genre, :film, presence: true

  before_create :check_genres

  private

  def check_genres
    return true if FilmGenre.where(film_id: self.film_id).count < 20
    return false
  end
end
