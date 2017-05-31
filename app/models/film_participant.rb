class FilmParticipant < ActiveRecord::Base
  belongs_to :film
  belongs_to :participant

  validates :role, :task, :film, :participant, presence: true
end
