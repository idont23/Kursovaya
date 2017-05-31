class CreateCinemaFilms < ActiveRecord::Migration
  def change
    create_table :cinema_films do |t|
      t.references :cinema, index: true, foreign_key: true, null: false
      t.references :film, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
    add_index(:cinema_films, [:cinema_id, :film_id], unique: true)
  end
end
